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
    public class TechnologyController : Controller
    {
        private static readonly ILog log = log4net.LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);
        private Context.AppContext db = new Context.AppContext();

        // GET: /Technology/
        public ActionResult Index()
        {
            try
            {
                return View(db.Technologies.ToList());
            }
            catch (Exception ex)
            {
                log.Error("TechnologyController  Index Action : " + ex.Message);
                return RedirectToAction("Index", "Error", new { exception = ex });
            }
        }

        public ActionResult Details(Guid? id, int start = 0, int size = 1)
        {
            try
            {
                if (id == null)
                {
                    return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
                }
                Technology technology = db.Technologies.AsNoTracking().Include(x => x.TechnologyContents).FirstOrDefault(x => x.TechnologyContents.Any(y => y.TechnologyContentGuid == id));
                if (technology == null)
                {
                    return HttpNotFound();
                }
                var orderedItems = technology.TechnologyContents.Where(x => x.IsActive).AsEnumerable()
                                    .Select((entry, index) => new
                                    {
                                        Guid = entry.TechnologyContentGuid,
                                        Rank = index + 1
                                    });

                var currentitem = orderedItems.FirstOrDefault(x => x.Guid == id);
                ViewBag.PreviousGuid = currentitem == null || orderedItems.FirstOrDefault(x => x.Rank == currentitem.Rank - 1) == null ? new Guid() : orderedItems.FirstOrDefault(x => x.Rank == currentitem.Rank - 1).Guid;
                ViewBag.NextGuid = currentitem == null || orderedItems.FirstOrDefault(x => x.Rank == currentitem.Rank + 1) == null ? new Guid() : orderedItems.FirstOrDefault(x => x.Rank == currentitem.Rank + 1).Guid;

                ViewBag.TechnologyContent = technology.TechnologyContents.Where(x => x.IsActive).ToList();
                technology.TechnologyContents = technology.TechnologyContents.Where(x => x.TechnologyContentGuid == id && x.IsActive).ToList();
                foreach (var technologyTechnologyContent in technology.TechnologyContents)
                {
                    technologyTechnologyContent.Description = HttpContext.Server.HtmlDecode(technologyTechnologyContent.Description);
                    technologyTechnologyContent.Example = HttpContext.Server.HtmlDecode(technologyTechnologyContent.Example);
                }
                return View(technology);
            }
            catch (Exception ex)
            {
                log.Error("TechnologyController  Details - Get Action : " + ex.Message);
                return RedirectToAction("Index", "Error", new { exception = ex });
            }
        }

        // GET: /Technology/Details/5
        //    public ActionResult Details(Guid? id, int start = 0, int size = 1)
        //{
        //    if (id == null)
        //    {
        //        return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
        //    }

        //    Technology technology = db.Technologies.AsNoTracking().Include(x => x.TechnologyContents).FirstOrDefault(x => x.TechnologyGuid == id);

        //    if (technology == null)
        //    {
        //        return HttpNotFound();
        //    }

        //    if (!technology.TechnologyContents.Skip(start).Take(size).Any())
        //    {
        //        start = 0;
        //        ViewBag.NextStart = 0;
        //    }
        //    else
        //        ViewBag.NextStart = start + size;

        //    ViewBag.Size = size;

        //    if (start - size <= 0)
        //        ViewBag.previousStart = 0;
        //    else
        //        ViewBag.previousStart = start - size;

        //    technology.TechnologyContents = technology.TechnologyContents.Skip(start).Take(size).ToList();
        //    foreach (var technologyTechnologyContent in technology.TechnologyContents)
        //    {
        //        technologyTechnologyContent.Description = HttpContext.Server.HtmlDecode(technologyTechnologyContent.Description);
        //        technologyTechnologyContent.Example = HttpContext.Server.HtmlDecode(technologyTechnologyContent.Example);
        //    }

        //    return View(technology);
        //}

        // GET: /Technology/Create
        public ActionResult Create()
        {
            try
            {
                return View();
            }
            catch (Exception ex)
            {
                log.Error("TechnologyController  Create -Get Action : " + ex.Message);
                return RedirectToAction("Index", "Error", new
                {
                    exception = ex
                });
            }
        }

        // POST: /Technology/Create
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Exclude = "TechnologyContents")] Technology technology)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    technology.TechnologyGuid = Guid.NewGuid();
                    db.Technologies.Add(technology);
                    db.SaveChanges();
                    return RedirectToAction("Index");
                }

                return View(technology);

            }
            catch (Exception ex)
            {
                log.Error("TechnologyController  Create -Post Action : " + ex.Message);
                return RedirectToAction("Index", "Error", new
                {
                    exception = ex
                });
            }
        }

        // GET: /Technology/Edit/5
        public ActionResult Edit(Guid? id)
        {
            try
            {
                if (id == null)
                {
                    return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
                }

                var technology = db.Technologies.Find(id);
                if (technology == null)
                {
                    return HttpNotFound();
                }

                return View(technology);
            }
            catch (Exception ex)
            {
                log.Error("TechnologyController  Edit- Get Action : " + ex.Message);
                return RedirectToAction("Index", "Error", new { exception = ex });
            }
        }

        // POST: /Technology/Edit/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Exclude = "TechnologyContents")] Technology technology)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    db.Entry(technology).State = EntityState.Modified;
                    db.SaveChanges();
                    return RedirectToAction("Index");
                }
                return View(technology);
            }
            catch (Exception ex)
            {
                log.Error("TechnologyController  Edit- Post Action : " + ex.Message);
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

                var technology = db.Technologies.Find(id);

                if (technology == null)
                {
                    return HttpNotFound();
                }

                return View(technology);
            }
            catch (Exception ex)
            {
                log.Error("TechnologyController  Delete- Get Action : " + ex.Message);
                return RedirectToAction("Index", "Error", new { exception = ex });
            }
        }

        // POST: /Technology/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(Guid id)
        {
            try
            {
                var technology = db.Technologies.Find(id);
                db.Technologies.Remove(technology);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            catch (Exception ex)
            {
                log.Error("TechnologyController  Delete- Post Action : " + ex.Message);
                return RedirectToAction("Index", "Error", new { exception = ex });
            }
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