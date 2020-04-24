using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web.Mvc;
using MixupActivity.Models;

namespace MixupActivity.Controllers
{
    using log4net;
    using MixupActivity.CustomAuthentication;

    [Authorize()]
    public class TransactionsController : Controller
    {
        private Context.AppContext db = new Context.AppContext();
        private static readonly ILog log = log4net.LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);
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

            //if(transactionFilter.)
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
            ViewBag.TransactionFor = new SelectList(db.TransactionFor.Where(x => x.TransactionType == 1), "TranscationForGuid", "TranscationFor");
            //ViewBag.TransactionType = new SelectList(new List<object>() { new { item = "Credit", value = "1" }, new { item = "Debit", value = "2" } }, "value", "item");
            return View(new Deposit() { TransactionDate = DateTime.Now.Date, IsApproved = false });
        }

        // POST: Transactions/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(Deposit deposit)
        {
            log.Info(deposit.TranscationForGuid);
            log.Info(deposit.TransactionFor);
            if (ModelState.IsValid)
            {
                List<Transaction> transactions = new List<Transaction>();

                Transaction transaction = new Transaction()
                {
                    TranscationGuid = Guid.NewGuid(),
                    Amount = deposit.Amount,
                    TranscationForGuid = deposit.TranscationForGuid,
                    TransactionDate = deposit.TransactionDate,
                    TranscationType = Enum.Enums.TransactionType.Credit,
                    PersonGuid = deposit.PersonGuid
                };

                transactions.Add(transaction);

                if (deposit.SelfInterest > 0)
                {
                    Transaction selfInterestTransaction = new Transaction()
                    {
                        TranscationGuid = Guid.NewGuid(),
                        Amount = deposit.SelfInterest,
                        TransactionFor = db.TransactionFor.FirstOrDefault(x => x.TranscationFor == "Interest(Self)"),
                        TransactionDate = deposit.TransactionDate,
                        TranscationType = Enum.Enums.TransactionType.Credit,
                        PersonGuid = deposit.PersonGuid
                    };

                    transactions.Add(selfInterestTransaction);
                }

                if (deposit.SelfInterest > 0)
                {
                    Transaction externalInterestTransaction = new Transaction()
                    {
                        TranscationGuid = Guid.NewGuid(),
                        Amount = deposit.ExternalInterest,
                        TransactionFor = db.TransactionFor.FirstOrDefault(x => x.TranscationFor == "Interest(Third Party)"),
                        TransactionDate = deposit.TransactionDate,
                        TranscationType = Enum.Enums.TransactionType.Credit,
                        PersonGuid = deposit.PersonGuid
                    };

                    transactions.Add(externalInterestTransaction);
                }


                db.Transactions.AddRange(transactions);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.PersonGuid = new SelectList(db.Persons, "PersonGuid", "LoginId", deposit.PersonGuid);
            ViewBag.TransactionFor = new SelectList(db.TransactionFor.Where(x => x.TransactionType == 1), "TranscationForGuid", "TranscationFor");
            //ViewBag.TransactionType = new SelectList(new List<object>() { new { item = "Credit", value = "1" }, new { item = "Debit", value = "2" } }, "value", "item");
            return View(deposit);
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
            decimal selfInterest = 0;
            string selfInterestMessage = string.Empty;
            decimal externalInterest = 0;
            string externalInterestMessage = string.Empty;
            GetEstimation(personGuid, transactionForGuid, ref amount, ref message);

            selfInterest = Math.Round(TotalInterestPayable(personGuid, "WithDraw Money(Self)") - TotalInterestPayable(personGuid, "Return Money(Self)") - TotalInterestPaid(personGuid, "Interest(Self)"),0);
            selfInterestMessage = "Total Outstanding Amount is " + (TotalAmount(personGuid, "WithDraw Money(Self)") - TotalAmount(personGuid, "Return Money(Self)")) + ". Payable Interest is " + selfInterest + ".";
            if (selfInterest <= 0)
            {
                selfInterest = 0;
                selfInterestMessage = "There is no outstanding interest. Please don't pay";
            }

            externalInterest = Math.Round(TotalInterestPayable(personGuid, "WithDraw Money(Third Party)") - TotalInterestPayable(personGuid, "Return Money(Third Party)") - TotalInterestPaid(personGuid, "Interest(Third Party)"),0);
            externalInterestMessage = "Total Outstanding Amount is " + (TotalAmount(personGuid, "WithDraw Money(Third Party)") - TotalAmount(personGuid, "Return Money(Third Party)")) + ". Payable Interest is " + selfInterest + ".";
            if (externalInterest <= 0)
            {
                externalInterest = 0;
                externalInterestMessage = "There is no outstanding interest. Please don't pay";
            }
            return Json(new { amount = amount, text = message, selfInterest = selfInterest, selfInterestMessage = selfInterestMessage, externalInterest = externalInterest, externalInterestMessage = externalInterestMessage }, JsonRequestBehavior.AllowGet);
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

            switch (transactionFor.TranscationFor)
            {
                case "Monthly EMI":
                    amount = 3000;
                    message = "Monthly EMI is 3000";
                    return;

                case "Return Money(Self)":
                    amount = (TotalAmount(personGuid, "WithDraw Money(Self)") - TotalAmount(personGuid, "Return Money(Self)"));
                   
                    message = "Total Outstanding Amount(Self) is" + amount + ".";
                    if (amount <= 0)
                    {
                        amount = 0;
                        message = "There is no outstanding money. Please don't pay";
                    }
                    return;

                case "Return Money(Third Party)":
                    
                    amount = TotalAmount(personGuid, "WithDraw Money(Third Party)") - TotalAmount(personGuid, "Return Money(Third Party)");
                    message = "Total Outstanding Amount(Third Party) is" + amount + ".";
                    if (amount <= 0)
                    {
                        amount = 0;
                        message = "There is no outstanding money. Please don't pay";
                    }
                    return;

                default:
                    amount = 0;
                    message = string.Empty;
                    return;
            }
        }

        private decimal TotalInterestPayable(Guid personGuid, string interestFor)
        {
            var transactionFor = db.TransactionFor.FirstOrDefault(x => x.TranscationFor.Equals(interestFor));
            return this.db.Transactions.Where(x => x.PersonGuid.Equals(personGuid) && x.TranscationForGuid.Equals(transactionFor.TranscationForGuid)).ToList()
                .Select(x => new
                {
                    Interest = (x.Amount * x.Interest) / 100,
                    Days = (DateTime.Now - x.TransactionDate).TotalDays
                })
                .Select(x => ((x.Interest * (decimal)x.Days) / 365))
                .Sum(x => x);
        }

        private decimal TotalInterestPaid(Guid personGuid, string interestFor)
        {
            var transactionFor = db.TransactionFor.FirstOrDefault(x => x.TranscationFor.Equals(interestFor));
            return this.db.Transactions.Where(x => x.PersonGuid.Equals(personGuid) && x.TranscationForGuid.Equals(transactionFor.TranscationForGuid)).ToList()
                .Select(x => x.Amount)
                .Sum(x => x);
        }

        private decimal TotalAmount(Guid personGuid, string interestFor)
        {
            var transactionFor = db.TransactionFor.FirstOrDefault(x => x.TranscationFor.Equals(interestFor));
            return this.db.Transactions.Where(x => x.PersonGuid.Equals(personGuid) && x.TranscationForGuid.Equals(transactionFor.TranscationForGuid)).ToList()
                .Sum(x => x.Amount);
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
        public ActionResult Edit(Transaction transaction)
        {
            if (ModelState.IsValid)
            {
                db.Entry(transaction).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index", "Transactions");
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

        [HttpGet]
        public ActionResult Approve()
        {
            return View(db.Transactions.Include(t => t.Person).Include(x => x.TransactionFor).Where(x => x.IsApproved == null));
        }

        [HttpPost, ActionName("Approve")]
        public ActionResult ApproveConfirmed(Transaction trans)
        {
            //
            Transaction transaction = db.Transactions.Find(new Guid(this.Request.Form["item.TranscationGuid"]));
            db.Entry(transaction).State = EntityState.Modified;
            transaction.IsApproved = true;
            db.SaveChanges();
            return RedirectToAction("Approve");
        }

        [HttpPost, ActionName("Reject")]
        public ActionResult RejectConfirmed(Transaction trans)
        {
            Transaction transaction = db.Transactions.Find(new Guid(this.Request.Form["item.TranscationGuid"]));
            db.Entry(transaction).State = EntityState.Modified;
            transaction.IsApproved = false;
            db.SaveChanges();
            return RedirectToAction("Approve");
        }
    }
}
