using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using MixupActivity.Context;
using MixupActivity.Models;

namespace MixupActivity.Controllers
{
    public class TransactionsController : Controller
    {
        private Context.AppContext db = new Context.AppContext();
        private IQueryable<Transaction> GetAllTransactions()
        {
            return db.Transactions.Include(t => t.Person);
        }

        // GET: Transactions
        public ActionResult Index()
        {
            //var transactions = db.Transactions.Include(t => t.Person);
            ViewBag.PersonGuid = new SelectList(db.Persons, "PersonGuid", "LoginId");
            return View(new TransactionsWithFilter {Transactions = GetAllTransactions().ToList() });
        }

        [HttpPost]
        public ActionResult Index([Bind(Include = "PersonGuid")] TransactionsWithFilter transactionFilter)
        {
            var transactions = GetAllTransactions();
            ViewBag.PersonGuid = new SelectList(db.Persons, "PersonGuid", "LoginId");
            if (transactionFilter.PersonGuid != null)
                transactions.Where(x => x.Person.PersonGuid == transactionFilter.PersonGuid);
            return View(new TransactionsWithFilter { Transactions = transactions.ToList() });
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
            ViewBag.PersonGuid = new SelectList(db.Persons, "PersonGuid", "LoginId");
            return View(new Transaction());
        }

        // POST: Transactions/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "TranscationGuid,TranscationType,Amount,TransactionDate,PersonGuid")] Transaction transaction)
        {
            if (ModelState.IsValid)
            {
                transaction.TranscationGuid = Guid.NewGuid();
                db.Transactions.Add(transaction);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.PersonGuid = new SelectList(db.Persons, "PersonGuid", "LoginId", transaction.PersonGuid);
            return View(transaction);
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
            return View(transaction);
        }

        // POST: Transactions/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "TranscationGuid,TranscationType,Amount,TransactionDate,PersonGuid")] Transaction transaction)
        {
            if (ModelState.IsValid)
            {
                db.Entry(transaction).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.PersonGuid = new SelectList(db.Persons, "PersonGuid", "LoginId", transaction.PersonGuid);
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
    }
}
