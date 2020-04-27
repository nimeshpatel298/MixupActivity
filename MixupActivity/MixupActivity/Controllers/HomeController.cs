using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MixupActivity.Models;
using MixupActivity.Services;

namespace MixupActivity.Controllers
{
    public class HomeController : Controller
    {

        private Context.AppContext db = new Context.AppContext();
       // private static readonly ILog log = log4net.LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);
        public ActionResult Index()
        {
            List<Deposit> deposits = new List<Deposit>();
            var people = db.Persons.ToList();
            foreach (var item in people)
            {
                var deposit = new Deposit() { TransactionDate = DateTime.Now.Date, IsApproved = false };
                deposit.Person = item;

                decimal amount = 0;
                string message = string.Empty;
                decimal selfInterest = 0;
                string selfInterestMessage = string.Empty;
                decimal externalInterest = 0;
                string externalInterestMessage = string.Empty;

                DepositService service = new DepositService();
                var transactionFor =  db.TransactionFor.FirstOrDefault(x => x.TranscationFor.Equals("Monthly EMI"));
                service.GetAmount(item.PersonGuid, transactionFor.TranscationForGuid, ref amount, ref message, ref selfInterest, ref selfInterestMessage, ref externalInterest, ref externalInterestMessage);


                //deposit.TransactionFor = 
                deposit.Amount = amount;
                deposit.SelfInterest = selfInterest;
                deposit.ExternalInterest = externalInterest;
                deposits.Add(deposit);
            }

            return View(deposits);
        }

        public ActionResult About()
        {
            ViewBag.Message = "Page is under construnction.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Contact me at";

            return View();
        }
        [AllowAnonymous]
        public ActionResult GetData()
        {
            List<Deposit> deposits = new List<Deposit>();
            var people = db.Persons.ToList();
            foreach(var item in people)
            {
                var deposit = new Deposit() { TransactionDate = DateTime.Now.Date, IsApproved = false };
                deposit.Person = item;
                //deposit.TransactionFor = 
                deposit.Amount = 0;
                deposit.SelfInterest = 0;
                deposit.ExternalInterest = 0;
                deposits.Add(deposit);
            }
            
            return null;
        }
    }
}