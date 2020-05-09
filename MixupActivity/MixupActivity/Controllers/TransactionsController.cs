using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web.Mvc;
using MixupActivity.Models;
using System.Configuration;

namespace MixupActivity.Controllers
{
    using log4net;
    using MixupActivity.CustomAuthentication;
    using MixupActivity.Services;

    [Authorize()]
    public class TransactionsController : Controller
    {
        private Context.AppContext db = new Context.AppContext();
        private static readonly ILog log = log4net.LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);
        public ActionResult Index()
        {
            ViewBag.PersonGuid = new SelectList(db.Persons, "PersonGuid", "LoginId", ((CustomPrincipal)User).PersonGuid);
            var obj = new TransactionsWithFilter() { PersonGuid = ((CustomPrincipal)User).PersonGuid, IsMonthlyEMI = true, InterestSelf = true, InterestThirdParty = true };
            this.FilterTransactions(obj);
            return View(obj);
        }

        [HttpPost]
        public ActionResult Index([Bind(Exclude = "Transactions")] TransactionsWithFilter transactionFilter)
        {
            this.FilterTransactions(transactionFilter);

            ViewBag.PersonGuid = new SelectList(db.Persons, "PersonGuid", "LoginId", ((CustomPrincipal)User).PersonGuid);
            return View(transactionFilter);
        }

        private void FilterTransactions(TransactionsWithFilter transactionFilter)
        {
            log.Error("Filter" + transactionFilter.PersonGuid);
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
                    x => lstAllowTransactionFor.Contains(x.TransactionFor.TranscationFor)).ToList().OrderBy(x => x.PersonGuid).OrderByDescending(x => x.TransactionDate).ToList();
            log.Error("After Filter :" + transactionFilter.Transactions.Count());

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


        public ActionResult AutoCreate(Guid id)
        {
            var person = db.Persons.FirstOrDefault(x => x.PersonGuid == id);

            var deposit = new Deposit() { TransactionDate = DateTime.Now.Date, IsApproved = false };
            deposit.Person = person;

            decimal amount = 0;
            string message = string.Empty;
            decimal selfInterest = 0;
            string selfInterestMessage = string.Empty;
            decimal externalInterest = 0;
            string externalInterestMessage = string.Empty;

            DepositService service = new DepositService();
            var transactionFor = db.TransactionFor.FirstOrDefault(x => x.TranscationFor.Equals("Monthly EMI"));
            service.GetAmount(person.PersonGuid, transactionFor.TranscationForGuid, ref amount, ref message, ref selfInterest, ref selfInterestMessage, ref externalInterest, ref externalInterestMessage);
            //deposit.TransactionFor = 
            deposit.Amount = amount;
            deposit.SelfInterest = selfInterest;
            deposit.ExternalInterest = externalInterest;

            ViewBag.PersonGuid = new SelectList(db.Persons, "PersonGuid", "LoginId", person.PersonGuid);
            ViewBag.TransactionFor = new SelectList(db.TransactionFor.Where(x => x.TransactionType == 1), "TranscationForGuid", "TranscationFor");
            //ViewBag.TransactionType = new SelectList(new List<object>() { new { item = "Credit", value = "1" }, new { item = "Debit", value = "2" } }, "value", "item");
            return View("Create", deposit);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult AutoCreate(Deposit deposit)
        {
            return Create(deposit);
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
                if ((int)deposit.Amount > 0)
                {
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
                }

                if ((int)deposit.SelfInterest > 0)
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

                if ((int)deposit.ExternalInterest > 0)
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

                EmailService emailService = new EmailService();
                //log.Error("Person:" + deposit.Person.)
                emailService.SendMail(db.Persons.FirstOrDefault(x => x.PersonGuid == deposit.PersonGuid), transactions);


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

            DepositService service = new DepositService();
            service.GetAmount(personGuid, transactionForGuid, ref amount, ref message, ref selfInterest, ref selfInterestMessage, ref externalInterest, ref externalInterestMessage);

            return Json(new { amount = amount, text = message, selfInterest = selfInterest, selfInterestMessage = selfInterestMessage, externalInterest = externalInterest, externalInterestMessage = externalInterestMessage }, JsonRequestBehavior.AllowGet);
            //return Json(new SelectList(db.TransactionFor.Where(x => x.TransactionType == id), "TranscationForGuid", "TranscationFor"), JsonRequestBehavior.AllowGet);
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
