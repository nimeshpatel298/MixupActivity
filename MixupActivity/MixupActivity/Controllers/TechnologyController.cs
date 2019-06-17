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
    public class TechnologyController : Controller
    {

        private Context.AppContext db = new Context.AppContext();

        // GET: /Technology/
        public ActionResult Index()
        {
            return View(db.Technologies.ToList());
        }

        public ActionResult Details(Guid? id, int start = 0, int size = 1)
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
            ViewBag.PreviousGuid = orderedItems.FirstOrDefault(x => x.Rank == currentitem.Rank - 1) == null ? new Guid() :orderedItems.FirstOrDefault(x => x.Rank == currentitem.Rank - 1).Guid;
            ViewBag.NextGuid = orderedItems.FirstOrDefault(x => x.Rank == currentitem.Rank + 1) == null ? new Guid() : orderedItems.FirstOrDefault(x => x.Rank == currentitem.Rank + 1).Guid;

            ViewBag.TechnologyContent = technology.TechnologyContents.Where(x => x.IsActive).ToList();
            technology.TechnologyContents = technology.TechnologyContents.Where(x => x.TechnologyContentGuid == id && x.IsActive).ToList();
            foreach (var technologyTechnologyContent in technology.TechnologyContents)
            {
                technologyTechnologyContent.Description = HttpContext.Server.HtmlDecode(technologyTechnologyContent.Description);
                technologyTechnologyContent.Example = HttpContext.Server.HtmlDecode(technologyTechnologyContent.Example);
            }



            return View(technology);
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
            return View();
        }

        // POST: /Technology/Create
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Exclude = "TechnologyContents")] Technology technology)
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

        // GET: /Technology/Edit/5
        public ActionResult Edit(Guid? id)
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

        // POST: /Technology/Edit/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Exclude = "TechnologyContents")] Technology technology)
        {
            if (ModelState.IsValid)
            {
                db.Entry(technology).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(technology);
        }

        // GET: /Technology/Delete/5
        public ActionResult Delete(Guid? id)
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

        // POST: /Technology/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(Guid id)
        {
            var technology = db.Technologies.Find(id);
            db.Technologies.Remove(technology);
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

        //public ActionResult Upload(FormCollection formCollection)
        //{
        //    if (Request != null)
        //    {
        //        HttpPostedFileBase file = Request.Files["UploadedFile"];
        //        if ((file != null) && (file.ContentLength > 0) && !string.IsNullOrEmpty(file.FileName))
        //        {
        //            var contentList = new List<TechnologyContent>();
        //            using (var package = new ExcelPackage(file.InputStream))
        //            {
        //                var currentSheet = package.Workbook.Worksheets;
        //                var workSheet = currentSheet.First();
        //                //var noOfCol = workSheet.Dimension.End.Column;
        //                var noOfRow = workSheet.Dimension.End.Row;
        //                for (int rowIterator = 2; rowIterator <= noOfRow; rowIterator++)
        //                {
        //                    var content = new TechnologyContent();
        //                    content.Topic = workSheet.Cells[rowIterator, 1].Value.ToString();
        //                    content.Description = workSheet.Cells[rowIterator, 2].Value.ToString();
        //                    content.Example = workSheet.Cells[rowIterator, 3].Value.ToString();
        //                    content.Link = workSheet.Cells[rowIterator, 3].Value.ToString();
        //                    content.TechnologyGuid = new Guid(formCollection["TechnologyGuid"]);
        //                    content.TechnologyContentGuid = Guid.NewGuid();

        //                    contentList.Add(content);
        //                }
        //            }
        //            db.TechnologyContent.AddRange(contentList);
        //            db.SaveChanges();
        //        }
        //    }
        //    return RedirectToAction("Index");
        //}
    }
}