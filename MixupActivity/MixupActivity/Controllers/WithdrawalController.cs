using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MixupActivity.CustomAuthentication;
using MixupActivity.Models;
using log4net;
using System.Net;
using System.Data.Entity;

namespace MixupActivity.Controllers
{
    [Authorize()]
    public class WithdrawalController : Controller
    {
        private static readonly ILog log = log4net.LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);
        private Context.AppContext db = new Context.AppContext();
       
        // GET: Withdrawal
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Create()
        {
            ViewBag.PersonGuid = new SelectList(db.Persons, "PersonGuid", "LoginId", ((CustomPrincipal)User).PersonGuid);
            ViewBag.TransactionFor = new SelectList(db.TransactionFor.Where(x => x.TransactionType == 2), "TranscationForGuid", "TranscationFor");
            return View(new Withdrawal() { TransactionDate = DateTime.Now.Date });
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(Withdrawal withdraw)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    Transaction transaction = new Transaction();
                    transaction.TranscationGuid = Guid.NewGuid();
                    
                    var transFor = db.TransactionFor.FirstOrDefault(x => x.TranscationForGuid == withdraw.TranscationForGuid).TranscationFor;
                    if (transFor == "Return Money(Self)" || transFor == "Return Money(Third Party)")
                    {
                        transaction.TranscationType = Enum.Enums.TransactionType.Credit;
                    }
                    else
                    {
                        transaction.TranscationType = Enum.Enums.TransactionType.Debit;
                    }
                    transaction.TranscationForGuid = withdraw.TranscationForGuid;
                    transaction.PersonGuid = withdraw.PersonGuid;
                    transaction.Amount = withdraw.Amount;
                    transaction.Interest = withdraw.Interest;
                    transaction.IsApproved = null
;
                    transaction.TransactionDate = withdraw.TransactionDate;

                    db.Transactions.Add(transaction);
                    db.SaveChanges();
                    return RedirectToAction("Index","Transactions");
                }

                ViewBag.PersonGuid = new SelectList(db.Persons, "PersonGuid", "LoginId", withdraw.PersonGuid);
                ViewBag.TransactionFor = new SelectList(db.TransactionFor.Where(x=> x.TransactionType == 2), "TranscationForGuid", "TranscationFor");
                return View(withdraw);
            }
            catch(Exception ex)
            {
                log.Error("WithdrawalController  Create - Post Action : " + ex.Message);
                return RedirectToAction("Index", "Error", new { exception = ex });
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
            ViewBag.TransactionFor = new SelectList(db.TransactionFor.Where(x => x.TransactionType == 2), "TranscationForGuid", "TranscationFor");
            ViewBag.PersonGuid = new SelectList(db.Persons, "PersonGuid", "LoginId", transaction.PersonGuid);

            Withdrawal withdrwal = new Withdrawal();
            withdrwal.TranscationGuid = transaction.TranscationGuid;
            
            withdrwal.TranscationForGuid = transaction.TranscationForGuid;
            withdrwal.PersonGuid = transaction.PersonGuid;
            withdrwal.Amount = transaction.Amount;
            withdrwal.Interest = transaction.Interest;
            withdrwal.TransactionDate = transaction.TransactionDate;
            return View(withdrwal);
        }

        // POST: Transactions/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(Withdrawal withdraw)
        {
            if (ModelState.IsValid)
            {
               
                Transaction transaction = db.Transactions.FirstOrDefault(x =>x.TranscationGuid == withdraw.TranscationGuid);

                if (transaction == null)
                {
                    return HttpNotFound();
                }

                log.Info(withdraw.TranscationGuid);
                log.Info(transaction.TranscationGuid);
                transaction.TranscationForGuid = withdraw.TranscationForGuid;
                transaction.PersonGuid = withdraw.PersonGuid;
                transaction.Amount = withdraw.Amount;
                transaction.Interest = withdraw.Interest;
                transaction.TransactionDate = withdraw.TransactionDate;
                db.Entry(transaction).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index","Transactions");
            }
            ViewBag.TransactionFor = new SelectList(db.TransactionFor.Where(x => x.TransactionType == 2), "TranscationForGuid", "TranscationFor");
            ViewBag.PersonGuid = new SelectList(db.Persons, "PersonGuid", "LoginId", withdraw.PersonGuid);
            return View(withdraw);
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

            Withdrawal withdrwal = new Withdrawal();
            withdrwal.TranscationGuid = Guid.NewGuid();

            withdrwal.TranscationForGuid = transaction.TranscationForGuid;
            withdrwal.PersonGuid = transaction.PersonGuid;
            withdrwal.Amount = transaction.Amount;
            withdrwal.Interest = transaction.Interest;
            withdrwal.TransactionDate = transaction.TransactionDate;
            return View(withdrwal);
        }

        // POST: Transactions/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(Guid id)
        {
            Transaction transaction = db.Transactions.Find(id);
            db.Transactions.Remove(transaction);
            db.SaveChanges();
            return RedirectToAction("Index","Transactions");
        }

    }
}