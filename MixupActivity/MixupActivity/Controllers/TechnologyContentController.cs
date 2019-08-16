using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using log4net;
using MixupActivity.Models;

namespace MixupActivity.Controllers
{
    public class TechnologyContentController : Controller
    {
        private Context.AppContext db = new Context.AppContext();
        private static readonly ILog log = log4net.LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);
        // GET: /TechnologyContent/Create
        public ActionResult Create()
        {
            try
            {
                ViewBag.TechnologyGuid = new SelectList(db.Technologies.AsNoTracking(), "TechnologyGuid", "TechnologyName");
                return View(new TechnologyContent());
            }
            catch (Exception ex)
            {
                log.Error("TechnologyContentController  Create- Get Action : " + ex.Message);
                return RedirectToAction("Index", "Error", new { exception = ex });
            }
        }

        // POST: /TechnologyContent/Create
        [HttpPost]
        [ValidateAntiForgeryToken]
        [ValidateInput(false)]
        public ActionResult Create([Bind(Exclude = "Technology")] TechnologyContent technologyContent)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    technologyContent.Description = HttpContext.Server.HtmlEncode(technologyContent.Description);
                    technologyContent.Example = HttpContext.Server.HtmlEncode(technologyContent.Example);
                    technologyContent.IsActive = true;
                    technologyContent.TechnologyContentGuid = Guid.NewGuid();
                    technologyContent.SeqNo = db.TechnologyContent.Count(x => x.TechnologyGuid == technologyContent.TechnologyGuid) + 1;
                    db.TechnologyContent.Add(technologyContent);
                    db.SaveChanges();
                    return RedirectToAction("Details", "Technology", new { id = technologyContent.TechnologyContentGuid });
                }

                ViewBag.TechnologyGuid = new SelectList(db.Technologies.AsNoTracking(), "TechnologyGuid", "TechnologyName", technologyContent.TechnologyGuid);
                return View(technologyContent);
            }
            catch (Exception ex)
            {
                log.Error("TechnologyContentController  Create- post Action : " + ex.Message);
                return RedirectToAction("Index", "Error", new { exception = ex });
            }
        }

        // GET: /TechnologyContent/Edit/5
        public ActionResult Edit(Guid? id)
        {
            try
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
            catch (Exception ex)
            {
                log.Error("TechnologyContentController  Edit- Get Action : " + ex.Message);
                return RedirectToAction("Index", "Error", new
                {
                    exception = ex
                });
            }
        }

        // POST: /TechnologyContent/Edit/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        [ValidateInput(false)]
        public ActionResult Edit([Bind(Exclude = "Technology")] TechnologyContent technologyContent)
        {
            try
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
            catch (Exception ex)
            {
                log.Error("TechnologyContentController  Edit- Post Action : " + ex.Message);
                return RedirectToAction("Index", "Error", new { exception = ex });
            }
        }

        // GET: /Technology/Delete/5
        public ActionResult Delete(Guid? id)
        {
            try
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

                return View(technologyContent);
            }
            catch (Exception ex)
            {
                log.Error("TechnologyContentController  Delete- Get Action : " + ex.Message);
                return RedirectToAction("Index", "Error", new { exception = ex });
            }
        }

        // POST: /TechnologyContent/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(Guid id)
        {
            try
            {
                TechnologyContent technologyContent = db.TechnologyContent.Find(id);
                technologyContent.IsActive = false;
                // db.TechnologyContent.Remove(technologyContent);
                db.SaveChanges();
                var guid = db.TechnologyContent.FirstOrDefault(x => x.TechnologyGuid == technologyContent.TechnologyGuid && x.IsActive) == null ? new Guid()
                    : db.TechnologyContent.FirstOrDefault(x => x.TechnologyGuid == technologyContent.TechnologyGuid && x.IsActive).TechnologyContentGuid;
                return RedirectToAction("Details", "Technology", new { id = guid });
            }
            catch (Exception ex)
            {
                log.Error("TechnologyContentController  Delete- Post Action : " + ex.Message);
                return RedirectToAction("Index", "Error", new { exception = ex });
            }
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