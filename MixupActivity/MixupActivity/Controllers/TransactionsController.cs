using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web.Mvc;
using MixupActivity.Models;

namespace MixupActivity.Controllers
{
    using MixupActivity.CustomAuthentication;

    [Authorize()]
    public class TransactionsController : Controller
    {
        private Context.AppContext db = new Context.AppContext();
        public ActionResult Index()
        {
            ViewBag.PersonGuid = new SelectList(db.Persons, "PersonGuid", "LoginId");
            return View(new TransactionsWithFilter { Transactions = GetAllTransactions().ToList() });
        }

        [HttpPost]
        public ActionResult Index([Bind(Exclude = "Transactions")] TransactionsWithFilter transactionFilter)
        {
            this.FilterTransactions(transactionFilter);

            ViewBag.PersonGuid = new SelectList(db.Persons, "PersonGuid", "LoginId");
            return View(transactionFilter);
        }

        private void FilterTransactions(TransactionsWithFilter transactionFilter)
        {
            transactionFilter.Transactions = this.GetAllTransactions();
            if (transactionFilter.PersonGuid != null)
                transactionFilter.Transactions = transactionFilter.Transactions.Where(
                    x => transactionFilter.PersonGuid == new Guid("00000000-0000-0000-0000-000000000000")
                         || x.Person.PersonGuid == transactionFilter.PersonGuid);
            var lstAllowTransactionFor = new List<string>();
            if (transactionFilter.IsMonthlyEMI)
                lstAllowTransactionFor.Add("Monthly EMI");
            if (transactionFilter.ReturnMoneySelf)
                lstAllowTransactionFor.Add("Return Money(Self)");
            if (transactionFilter.ReturnMoneyThirdParty)
                lstAllowTransactionFor.Add("Return Money(Third Party)");
            if (transactionFilter.InterestSelf)
                lstAllowTransactionFor.Add("Interest(Self)");
            if (transactionFilter.InterestThirdParty)
                lstAllowTransactionFor.Add("Interest(Third Party)");
            if (transactionFilter.WithDrawMoneySelf)
                lstAllowTransactionFor.Add("WithDraw Money(Self)");
            if (transactionFilter.WithDrawMoneyThirdParty)
                lstAllowTransactionFor.Add("WithDraw Money(Third Party)");
            if (transactionFilter.Sip)
                lstAllowTransactionFor.Add("SIP");
            if (transactionFilter.Expense)
                lstAllowTransactionFor.Add("Expense");

            if (lstAllowTransactionFor.Any())
                transactionFilter.Transactions = transactionFilter.Transactions.Where(
                    x => lstAllowTransactionFor.Contains(x.TransactionFor.TranscationFor));
        }

        // GET: Transactions/Details/5
        public ActionResult Details(Guid? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Transaction transaction = db.Transactions.Find(id);
            if (transaction == null)
            {
                return HttpNotFound();
            }
            return View(transaction);
        }

        // GET: Transactions/Create
        public ActionResult Create()
        {
            ViewBag.PersonGuid = new SelectList(db.Persons, "PersonGuid", "LoginId", ((CustomPrincipal)User).PersonGuid);
            ViewBag.TransactionFor = new SelectList(db.TransactionFor, "TranscationForGuid", "TranscationFor");
            return View(new Transaction() { TransactionDate = DateTime.Now.Date });
        }

        // POST: Transactions/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "TranscationGuid,TranscationType,Amount,TransactionDate,PersonGuid,TranscationForGuid")] Transaction transaction)
        {
            if (ModelState.IsValid)
            {
                transaction.TranscationGuid = Guid.NewGuid();
                db.Transactions.Add(transaction);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.PersonGuid = new SelectList(db.Persons, "PersonGuid", "LoginId", transaction.PersonGuid);
            ViewBag.TransactionFor = new SelectList(db.TransactionFor, "TranscationForGuid", "TranscationFor");
            return View(transaction);
        }


        public ActionResult GetTransactionFor(int id)
        {
            return Json(new SelectList(db.TransactionFor.Where(x => x.TransactionType == id), "TranscationForGuid", "TranscationFor"), JsonRequestBehavior.AllowGet);
        }

        [AllowAnonymous]
        public ActionResult GetAmount(Guid personGuid, Guid transactionForGuid)
        {
            decimal amount = 0;
            string message = string.Empty;
            GetEstimation(personGuid, transactionForGuid, ref amount, ref message);

            return Json(new { amount = amount, text = message }, JsonRequestBehavior.AllowGet);
            //return Json(new SelectList(db.TransactionFor.Where(x => x.TransactionType == id), "TranscationForGuid", "TranscationFor"), JsonRequestBehavior.AllowGet);
        }

        private void GetEstimation(Guid personGuid, Guid transactionForGuid, ref decimal amount, ref string message)
        {
            if (personGuid == null || transactionForGuid == null)
                return;
            if (db.TransactionFor.Any(x => x.TransactionType == 2 && x.TranscationForGuid.Equals(transactionForGuid)))
                return;
            var transactionFor = db.TransactionFor.FirstOrDefault(x => x.TranscationForGuid.Equals(transactionForGuid));
            if (transactionFor == null)
                return;

            decimal withdrawAmount = 0;
            decimal returnAmount = 0;
            decimal selfInterestRate = 0.1m;
            decimal thirdPartyInterestRate = 0.15m;



            switch (transactionFor.TranscationFor)
            {
                case "Monthly EMI":
                    amount = 3000;
                    message = "Monthly EMI is 3000";
                    return;
                case "Return Money(Self)":
                    var withdrawMoneySelf = db.TransactionFor.FirstOrDefault(x => x.TranscationFor.Equals("WithDraw Money(Self)"));
                    var returnMoneySelf = db.TransactionFor.FirstOrDefault(x => x.TranscationFor.Equals("Return Money(Self)"));
                    withdrawAmount = this.db.Transactions.Where(x => x.PersonGuid.Equals(personGuid) && x.TranscationForGuid.Equals(withdrawMoneySelf.TranscationForGuid)).ToList().Sum(x => x.Amount);
                    returnAmount = this.db.Transactions.Where(x => x.PersonGuid.Equals(personGuid) && x.TranscationForGuid.Equals(returnMoneySelf.TranscationForGuid)).ToList().Sum(x => x.Amount);
                    amount = withdrawAmount - returnAmount;
                    message = "Total Outstanding Amount(Self) is" + amount + ".";
                    if (amount <= 0)
                    {
                        amount = 0;
                        message = "There is no outstanding money. Please don't pay";
                    }
                    return;
                case "Return Money(Third Party)":
                    var transactionForOutsideThirdParty = db.TransactionFor.FirstOrDefault(x => x.TranscationFor.Equals("WithDraw Money(Third Party)"));
                    var transactionForOutsideThirdPartyReturned = db.TransactionFor.FirstOrDefault(x => x.TranscationFor.Equals("Return Money(Third Party)"));
                    withdrawAmount = this.db.Transactions.Where(x => x.PersonGuid.Equals(personGuid) && x.TranscationForGuid.Equals(transactionForOutsideThirdParty.TranscationForGuid)).ToList().Sum(x => x.Amount);
                    returnAmount = this.db.Transactions.Where(x => x.PersonGuid.Equals(personGuid) && x.TranscationForGuid.Equals(transactionForOutsideThirdPartyReturned.TranscationForGuid)).ToList().Sum(x => x.Amount);
                    amount = withdrawAmount - returnAmount;
                    message = "Total Outstanding Amount(Third Party) is" + amount + ".";
                    if (amount <= 0)
                    {
                        amount = 0;
                        message = "There is no outstanding money. Please don't pay";
                    }
                    return;
                case "Interest(Self)":
                    var transactionForOutsideSelfInt = db.TransactionFor.FirstOrDefault(x => x.TranscationFor.Equals("WithDraw Money(Self)"));
                    var returnMoneySelfInt = db.TransactionFor.FirstOrDefault(x => x.TranscationFor.Equals("Return Money(Self)"));
                    var interstSelf = db.TransactionFor.FirstOrDefault(x => x.TranscationFor.Equals("Interest(Third Party)"));
                    withdrawAmount = this.db.Transactions.Where(x => x.PersonGuid.Equals(personGuid) && x.TranscationForGuid.Equals(transactionForOutsideSelfInt.TranscationForGuid)).ToList().Sum(x => x.Amount);
                    returnAmount = this.db.Transactions.Where(x => x.PersonGuid.Equals(personGuid) && x.TranscationForGuid.Equals(returnMoneySelfInt.TranscationForGuid)).ToList().Sum(x => x.Amount);
                    var interestPaidSelf = this.db.Transactions.Where(x => x.PersonGuid.Equals(personGuid) && x.TranscationForGuid.Equals(interstSelf.TranscationForGuid)).ToList().Sum(x => x.Amount);
                    amount = ((withdrawAmount - returnAmount) * selfInterestRate) / 12;
                    amount = amount - interestPaidSelf;
                    message = "Total Outstanding Amount is " + (withdrawAmount - returnAmount) + ". Payable Interest is " + amount + ".";
                    if (amount <= 0)
                    {
                        amount = 0;
                        message = "There is no outstanding interest. Please don't pay";
                    }
                    return;
                case "Interest(Third Party)":
                    var transactionForOutsideThirdPartyInt = db.TransactionFor.FirstOrDefault(x => x.TranscationFor.Equals("WithDraw Money(Third Party)"));
                    var transactionForOutsideThirdPartyReturnedInt = db.TransactionFor.FirstOrDefault(x => x.TranscationFor.Equals("Return Money(Third Party)"));
                    var interstThirdParty = db.TransactionFor.FirstOrDefault(x => x.TranscationFor.Equals("Interest(Third Party)"));
                    withdrawAmount = this.db.Transactions.Where(x => x.PersonGuid.Equals(personGuid) && x.TranscationForGuid.Equals(transactionForOutsideThirdPartyInt.TranscationForGuid)).ToList().Sum(x => x.Amount);
                    returnAmount = this.db.Transactions.Where(x => x.PersonGuid.Equals(personGuid) && x.TranscationForGuid.Equals(transactionForOutsideThirdPartyReturnedInt.TranscationForGuid)).ToList().Sum(x => x.Amount);
                    var interestPaid = this.db.Transactions.Where(x => x.PersonGuid.Equals(personGuid) && x.TranscationForGuid.Equals(interstThirdParty.TranscationForGuid)).ToList().Sum(x => x.Amount);
                    amount = ((withdrawAmount - returnAmount) * thirdPartyInterestRate) / 12;
                    amount = amount - interestPaid;
                    message = "Total Outstanding Amount(Third Party) is " + (withdrawAmount - returnAmount) + ".Payable Interest is " + amount + ".";
                    if (amount <= 0)
                    {
                        amount = 0;
                        message = "There is no outstanding Interest. Please don't pay";
                    }
                    return;
                default:
                    amount = 0;
                    message = string.Empty;
                    return;
            }



        }

        // GET: Transactions/Edit/5
        public ActionResult Edit(Guid? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Transaction transaction = db.Transactions.Find(id);
            if (transaction == null)
            {
                return HttpNotFound();
            }
            ViewBag.PersonGuid = new SelectList(db.Persons, "PersonGuid", "LoginId", transaction.PersonGuid);
            ViewBag.TransactionFor = new SelectList(db.TransactionFor.Where(x => x.TransactionType == (int)transaction.TranscationType), "TranscationForGuid", "TranscationFor");
            return View(transaction);
        }

        // POST: Transactions/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "TranscationGuid,TranscationType,Amount,TransactionDate,PersonGuid,TranscationForGuid")] Transaction transaction)
        {
            if (ModelState.IsValid)
            {
                db.Entry(transaction).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.PersonGuid = new SelectList(db.Persons, "PersonGuid", "LoginId", transaction.PersonGuid);
            ViewBag.TransactionFor = new SelectList(db.TransactionFor.Where(x => x.TransactionType == (int)transaction.TranscationType), "TranscationForGuid", "TranscationFor");
            return View(transaction);
        }

        // GET: Transactions/Delete/5
        public ActionResult Delete(Guid? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Transaction transaction = db.Transactions.Find(id);
            if (transaction == null)
            {
                return HttpNotFound();
            }
            return View(transaction);
        }

        // POST: Transactions/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(Guid id)
        {
            Transaction transaction = db.Transactions.Find(id);
            db.Transactions.Remove(transaction);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private IQueryable<Transaction> GetAllTransactions()
        {
            return db.Transactions.Include(t => t.Person).Include(x => x.TransactionFor);
        }
    }
}
