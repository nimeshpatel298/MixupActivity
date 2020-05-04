using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using log4net;
using MixupActivity.Models;

namespace MixupActivity.Controllers
{
    [Authorize()]
    public class InvestmentController : Controller
    {
        private static readonly ILog log = log4net.LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);
        private Context.AppContext db = new Context.AppContext();
        // GET: Investment
        public ActionResult Index()
        {
            return View(db.Investments.ToList());
        }

        public ActionResult Create()
        {
            var category = ConfigurationManager.AppSettings["InvestmentCategory"];
            var list = category.Split(',').Select(x => new { item = x , value = x});
            ViewBag.InvestmentTypes = new SelectList(list, "value", "item");
            ViewBag.TransactionType = new SelectList(new List<object>() { new { item = "Credit", value = 1 }, new { item = "Debit", value = 2 } }, "value", "item");
            return View(new Investment() { IsMonthlyRecurrent = true, InvestmentDate = DateTime.Now.Date, Amount = 0});
        }

        public ActionResult AutoCreate(string investmentName)
        {
            log.Error("AutoCreate Invesment" + investmentName);
            var category = ConfigurationManager.AppSettings["InvestmentCategory"];
            var list = category.Split(',').Select(x => new { item = x, value = x });
            ViewBag.InvestmentTypes = new SelectList(list, "value", "item");
            ViewBag.TransactionType = new SelectList(new List<object>() { new { item = "Credit", value = 1 }, new { item = "Debit", value = 2 } }, "value", "item");

            var sample = db.Investments.OrderByDescending(y => y.InvestmentDate).First(y => y.InvestmentName == investmentName);

            log.Error("Sample" + sample == null ? "NULL" : "Not Null");
            var investment = new Investment()
            {
                InvestmentDate = DateTime.Now.Date,
                TranscationType = Enum.Enums.TransactionType.Debit,
                InvestmentName = investmentName,
                IsMonthlyRecurrent = true,
                Amount = sample.Amount,
                InvestmentType = sample.InvestmentType
            };
            return View("Create", investment);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult AutoCreate(Investment investment)
        {
            return Create(investment);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(Investment investment)
        {
            if (ModelState.IsValid)
            {
                db.Investments.Add(investment);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            var category = ConfigurationManager.AppSettings["InvestmentCategory"];
            var list = category.Split(',').Select(x => new { item = x, value = x });
            ViewBag.InvestmentTypes = new SelectList(list, "value", "item");
            ViewBag.TransactionType = new SelectList(new List<object>() { new { item = "Credit", value = 1 }, new { item = "Debit", value = 2 } }, "value", "item");
            return View(investment);
        }

        public ActionResult Edit(Guid? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Investment investment = db.Investments.Find(id);
            if (investment == null)
            {
                return HttpNotFound();
            }
            var category = ConfigurationManager.AppSettings["InvestmentCategory"];
            var list = category.Split(',').Select(x => new { item = x, value = x });
            ViewBag.InvestmentTypes = new SelectList(list, "value", "item");
            ViewBag.TransactionType = new SelectList(new List<object>() { new { item = "Credit", value = "1" }, new { item = "Debit", value = "2" } }, "value", "item");
            return View(investment);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(Investment investment)
        {
            if (ModelState.IsValid)
            {
                db.Entry(investment).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            var category = ConfigurationManager.AppSettings["InvestmentCategory"];
            var list = category.Split(',').Select(x => new { item = x, value = x });
            ViewBag.InvestmentTypes = new SelectList(list, "value", "item");
            ViewBag.TransactionType = new SelectList(new List<object>() { new { item = "Credit", value = "1" }, new { item = "Debit", value = "2" } }, "value", "item");
            return View(investment);
        }

        public ActionResult Delete(Guid? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Investment investment = db.Investments.Find(id);
            if (investment == null)
            {
                return HttpNotFound();
            }
            return View(investment);
        }

        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(Guid id)
        {
            Investment investment = db.Investments.Find(id);
            db.Investments.Remove(investment);
            db.SaveChanges();
            return RedirectToAction("Index");
        }
    }
}