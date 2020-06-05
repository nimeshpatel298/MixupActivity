using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net.Mail;
using System.Configuration;
using MixupActivity.Models;
using System.Text;

namespace MixupActivity.Services
{
    public class EmailService
    {

        public void SendMail(Person person, List<Transaction> transactions)
        {
            if (ConfigurationManager.AppSettings["MailEnabled"] == "ON")
            {
                MailMessage mail = new MailMessage();
                SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");

                mail.From = new MailAddress(ConfigurationManager.AppSettings["from"]);
                mail.To.Add(person.Email);
                mail.CC.Add(ConfigurationManager.AppSettings["from"]);
                mail.Subject = "Mixup Account Update";
                mail.IsBodyHtml = false;

                mail.Body = GetBody(person, transactions);

                //SmtpServer.Host = "localhost";
                SmtpServer.Port = 587;
                SmtpServer.EnableSsl = true;
                SmtpServer.UseDefaultCredentials = true;

                // SmtpServer.Port = 587;
                SmtpServer.Credentials = new System.Net.NetworkCredential(ConfigurationManager.AppSettings["from"], ConfigurationManager.AppSettings["password"]);
                // SmtpServer.EnableSsl = true;
                // SmtpServer.UseDefaultCredentials = false;

                SmtpServer.Send(mail);
            }
        }

        public string GetBody(Person person, List<Transaction> transactions)
        {
            StringBuilder sb = new StringBuilder();

            sb.Append("Dear " + person.PersonName + Environment.NewLine);
            sb.Append(Environment.NewLine);
            sb.Append("This is to infom you that your account has been credited with " + transactions.Sum(x => x.Amount) + ".");
            sb.Append(Environment.NewLine);
            sb.Append(Environment.NewLine);
            sb.Append("Thanks & Regards");
            sb.Append(Environment.NewLine);
            sb.Append("Mixup Admin Team.");
            return sb.ToString();
        }
    }
}