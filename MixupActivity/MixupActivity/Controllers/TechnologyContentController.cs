using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using MixupActivity.Models;

namespace MixupActivity.Controllers
{
    public class TechnologyContentController : Controller
    {
        private Context.AppContext db = new Context.AppContext();

        // GET: /TechnologyContent/Create
        public ActionResult Create()
        {
            ViewBag.TechnologyGuid = new SelectList(db.Technologies.AsNoTracking(), "TechnologyGuid", "TechnologyName");
            return View(new TechnologyContent());
        }

        // POST: /TechnologyContent/Create
        [HttpPost]
        [ValidateAntiForgeryToken]
        [ValidateInput(false)]
        public ActionResult Create([Bind(Exclude = "Technology")] TechnologyContent technologyContent)
        {
            if (ModelState.IsValid)
            {
                technologyContent.Description = HttpContext.Server.HtmlEncode(technologyContent.Description);
                technologyContent.Example = HttpContext.Server.HtmlEncode(technologyContent.Example);
                technologyContent.TechnologyContentGuid = Guid.NewGuid();
                db.TechnologyContent.Add(technologyContent);
                db.SaveChanges();
                return RedirectToAction("Details", "Technology", new { id = technologyContent.TechnologyContentGuid });
            }

            ViewBag.TechnologyGuid = new SelectList(db.Technologies.AsNoTracking(), "TechnologyGuid", "TechnologyName", technologyContent.TechnologyGuid);
            return View(technologyContent);
        }

        // GET: /TechnologyContent/Edit/5
        public ActionResult Edit(Guid? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }

            var technologyContent = db.TechnologyContent.Find(id);
            if (technologyContent == null)
            {
                return HttpNotFound();
            }
            technologyContent.Description = HttpContext.Server.HtmlDecode(technologyContent.Description);
            technologyContent.Example = HttpContext.Server.HtmlDecode(technologyContent.Example);
            ViewBag.TechnologyGuid = new SelectList(db.Technologies, "TechnologyGuid", "TechnologyName", technologyContent.TechnologyGuid);
            return View(technologyContent);
        }

        // POST: /TechnologyContent/Edit/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        [ValidateInput(false)]
        public ActionResult Edit([Bind(Exclude = "Technology")] TechnologyContent technologyContent)
        {
            if (ModelState.IsValid)
            {
                db.Entry(technologyContent).State = EntityState.Modified;
                technologyContent.Description = HttpContext.Server.HtmlEncode(technologyContent.Description);
                technologyContent.Example = HttpContext.Server.HtmlEncode(technologyContent.Example);
                db.SaveChanges();
                return RedirectToAction("Details", "Technology", new { id = technologyContent.TechnologyContentGuid });
            }
            ViewBag.TechnologyGuid = new SelectList(db.Technologies.AsNoTracking(), "TechnologyGuid", "TechnologyName", technologyContent.TechnologyGuid);
            return View(technologyContent);
        }

        // POST: /TechnologyContent/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(Guid id)
        {
            TechnologyContent technologyContent = db.TechnologyContent.Find(id);
            db.TechnologyContent.Remove(technologyContent);
            db.SaveChanges();
            return RedirectToAction("Index", "Technology");
        }

        public ActionResult LikeContent(bool like, Guid contentGuid)
        {
            TechnologyContent technologyContent = db.TechnologyContent.Find(contentGuid);
            //db.TechnologyContent.Remove(technologyContent);
            //db.SaveChanges();
            return this.Json(true, JsonRequestBehavior.AllowGet);
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