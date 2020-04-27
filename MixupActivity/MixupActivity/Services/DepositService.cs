﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;

namespace MixupActivity.Services
{
    public class DepositService
    {
        private Context.AppContext db;
        public DepositService()
        {
            db = new Context.AppContext();
        }
        public void GetAmount(Guid personGuid, Guid transactionForGuid, ref decimal amount, ref string message, ref decimal selfInterest, ref string selfInterestMessage,ref decimal externalInterest, ref string externalInterestMessage)
        {

            GetEstimation(personGuid, transactionForGuid, ref amount, ref message);

            selfInterest = Math.Round(TotalInterestPayable(personGuid, "WithDraw Money(Self)") - TotalInterestPayable(personGuid, "Return Money(Self)") - TotalInterestPaid(personGuid, "Interest(Self)"), 0);
            selfInterestMessage = "Total Outstanding Amount is " + (TotalAmount(personGuid, "WithDraw Money(Self)") - TotalAmount(personGuid, "Return Money(Self)")) + ". Payable Interest is " + selfInterest + ".";
            if (selfInterest <= 0)
            {
                selfInterest = 0;
                selfInterestMessage = "There is no outstanding interest. Please don't pay";
            }

            externalInterest = Math.Round(TotalInterestPayable(personGuid, "WithDraw Money(Third Party)") - TotalInterestPayable(personGuid, "Return Money(Third Party)") - TotalInterestPaid(personGuid, "Interest(Third Party)"), 0);
            externalInterestMessage = "Total Outstanding Amount is " + (TotalAmount(personGuid, "WithDraw Money(Third Party)") - TotalAmount(personGuid, "Return Money(Third Party)")) + ". Payable Interest is " + selfInterest + ".";
            if (externalInterest <= 0)
            {
                externalInterest = 0;
                externalInterestMessage = "There is no outstanding interest. Please don't pay";
            }

        }

        private void GetEstimation(Guid personGuid, Guid transactionForGuid, ref decimal amount, ref string message)
        {
            if (personGuid == null || transactionForGuid == null)
                return;
            if (db.TransactionFor.Any(x => x.TransactionType == 2 && x.TranscationForGuid.Equals(transactionForGuid)))
                return;
            var transactionFor = db.TransactionFor.FirstOrDefault(x => x.TranscationForGuid.Equals(transactionForGuid));
            if (transactionFor == null)
                return;

            switch (transactionFor.TranscationFor)
            {
                case "Monthly EMI":
                    int emi = 0;
                    int.TryParse(ConfigurationManager.AppSettings["EMI"], out emi);
                    var paidEmiAmount = PaidEmi(personGuid);
                    amount = (emi - paidEmiAmount) > 0 ? (emi - paidEmiAmount) : 0;
                    message = "Monthly EMI is " + amount;
                    return;

                case "Return Money(Self)":
                    amount = (TotalAmount(personGuid, "WithDraw Money(Self)") - TotalAmount(personGuid, "Return Money(Self)"));

                    message = "Total Outstanding Amount(Self) is" + amount + ".";
                    if (amount <= 0)
                    {
                        amount = 0;
                        message = "There is no outstanding money. Please don't pay";
                    }
                    return;

                case "Return Money(Third Party)":

                    amount = TotalAmount(personGuid, "WithDraw Money(Third Party)") - TotalAmount(personGuid, "Return Money(Third Party)");
                    message = "Total Outstanding Amount(Third Party) is" + amount + ".";
                    if (amount <= 0)
                    {
                        amount = 0;
                        message = "There is no outstanding money. Please don't pay";
                    }
                    return;

                default:
                    amount = 0;
                    message = string.Empty;
                    return;
            }
        }

        private decimal TotalInterestPayable(Guid personGuid, string interestFor)
        {
            var transactionFor = db.TransactionFor.FirstOrDefault(x => x.TranscationFor.Equals(interestFor));

            DateTime now = DateTime.Now;
            var startDate = new DateTime(now.Year, now.Month, 1);
            var endDate = startDate.AddDays(-1);
            return this.db.Transactions.Where(x => x.PersonGuid.Equals(personGuid) && x.TranscationForGuid.Equals(transactionFor.TranscationForGuid)).ToList()
                .Select(x => new
                {
                    Interest = (x.Amount * x.Interest) / 100,
                    Days = (endDate - x.TransactionDate).TotalDays
                })
                .Select(x => ((x.Interest * (decimal)x.Days) / 365))
                .Sum(x => x);
        }

        private decimal TotalInterestPaid(Guid personGuid, string interestFor)
        {
            var transactionFor = db.TransactionFor.FirstOrDefault(x => x.TranscationFor.Equals(interestFor));
            return this.db.Transactions.Where(x => x.PersonGuid.Equals(personGuid) && x.TranscationForGuid.Equals(transactionFor.TranscationForGuid)).ToList()
                .Select(x => x.Amount)
                .Sum(x => x);
        }

        private decimal TotalAmount(Guid personGuid, string interestFor)
        {
            var transactionFor = db.TransactionFor.FirstOrDefault(x => x.TranscationFor.Equals(interestFor));
            return this.db.Transactions.Where(x => x.PersonGuid.Equals(personGuid) && x.TranscationForGuid.Equals(transactionFor.TranscationForGuid)).ToList()
                .Sum(x => x.Amount);
        }

        private decimal PaidEmi(Guid personGuid)
        {
            DateTime now = DateTime.Now;
            var startDate = new DateTime(now.Year, now.Month, 1);
            var endDate = startDate.AddMonths(1).AddDays(-1);
            var transactionFor = db.TransactionFor.FirstOrDefault(x => x.TranscationFor.Equals("Monthly EMI"));
            return this.db.Transactions.Where(x => x.PersonGuid.Equals(personGuid) && x.TranscationForGuid.Equals(transactionFor.TranscationForGuid) && x.TransactionDate >= startDate && x.TransactionDate <= endDate).ToList()
                .Sum(x => x.Amount);
        }
    }
}