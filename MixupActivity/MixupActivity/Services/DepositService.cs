using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using MixupActivity.Models;
using System.Data.Entity;

namespace MixupActivity.Services
{
    public class DepositService
    {
        private Context.AppContext db;
        public DepositService()
        {
            db = new Context.AppContext();
        }
        public void GetAmount(Guid personGuid, Guid transactionForGuid, ref decimal amount, ref string message, ref decimal selfInterest, ref string selfInterestMessage, ref decimal externalInterest, ref string externalInterestMessage)
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


        public List<DepositReport> GetReport(string transactionForStr)
        {
            List<DepositReport> lstDepositReports = new List<DepositReport>();
            var dateTimeNow = DateTime.Now;
            var transactionFor = db.TransactionFor.FirstOrDefault(x => x.TranscationFor.Equals(transactionForStr));

            DepositReport month = new DepositReport();
            month.MonthStartDate = new DateTime(2000, 1, 1);
            month.MonthEndDate = new DateTime(dateTimeNow.Year - 1, 12, 31);
            month.MonthDesc = "Till Dec-" + (dateTimeNow.Year - 1);

            month.Users = new List<User>();

            db.Persons.ToList().ForEach(x =>
            {
                User user = new User();
                user.Person = x;
                var items = db.Transactions.Where(y => y.TransactionDate >= month.MonthStartDate && y.TransactionDate <= month.MonthEndDate
                && y.PersonGuid == x.PersonGuid
                && y.TranscationForGuid == transactionFor.TranscationForGuid).ToList();
                if (items == null || items.Count == 0)
                    user.Amount = 0;
                else
                    user.Amount = items.Select(y => y.Amount).Sum();
                month.Users.Add(user);
            });
            month.TotalOfMonth = month.Users.Select(z => z.Amount).Sum();
            lstDepositReports.Add(month);


            for (int i = 1; i <= 12; i++)
            {
                month = new DepositReport();
                month.MonthStartDate = new DateTime(dateTimeNow.Year, i, 1);
                month.MonthEndDate = month.MonthStartDate.AddMonths(1).AddDays(-1);
                month.MonthDesc = month.MonthStartDate.ToString("MMM");

                month.Users = new List<User>();

                db.Persons.ToList().ForEach(x =>
                {
                    User user = new User();
                    user.Person = x;
                    var items = db.Transactions.Where(y => y.TransactionDate >= month.MonthStartDate && y.TransactionDate <= month.MonthEndDate
                    && y.PersonGuid == x.PersonGuid
                    && y.TranscationForGuid == transactionFor.TranscationForGuid).ToList();
                    if (items == null || items.Count == 0)
                        user.Amount = 0;
                    else
                        user.Amount = items.Select(y => y.Amount).Sum();
                    month.Users.Add(user);
                });
                month.TotalOfMonth = month.Users.Select(z => z.Amount).Sum();
                lstDepositReports.Add(month);
            }

            month = new DepositReport();
            month.MonthStartDate = new DateTime(dateTimeNow.Year, 1, 1);
            month.MonthEndDate = new DateTime(dateTimeNow.Year, 12, 31);
            month.MonthDesc = "Total Of " + (dateTimeNow.Year);

            month.Users = new List<User>();

            db.Persons.ToList().ForEach(x =>
            {
                User user = new User();
                user.Person = x;
                var items = db.Transactions.Where(y => y.TransactionDate >= month.MonthStartDate && y.TransactionDate <= month.MonthEndDate
                && y.PersonGuid == x.PersonGuid
                && y.TranscationForGuid == transactionFor.TranscationForGuid).ToList();
                if (items == null || items.Count == 0)
                    user.Amount = 0;
                else
                    user.Amount = items.Select(y => y.Amount).Sum();
                month.Users.Add(user);
            });
            month.TotalOfMonth = month.Users.Select(z => z.Amount).Sum();
            lstDepositReports.Add(month);


            month = new DepositReport();
            month.MonthStartDate = new DateTime(2000, 1, 1);
            month.MonthEndDate = new DateTime(dateTimeNow.Year, 12, 31);
            month.MonthDesc = "Grand Total";

            month.Users = new List<User>();

            db.Persons.ToList().ForEach(x =>
            {
                User user = new User();
                user.Person = x;
                var items = db.Transactions.Where(y => y.TransactionDate >= month.MonthStartDate && y.TransactionDate <= month.MonthEndDate
                && y.PersonGuid == x.PersonGuid
                && y.TranscationForGuid == transactionFor.TranscationForGuid).ToList();
                if (items == null || items.Count == 0)
                    user.Amount = 0;
                else
                    user.Amount = items.Select(y => y.Amount).Sum();
                month.Users.Add(user);
            });
            month.TotalOfMonth = month.Users.Select(z => z.Amount).Sum();
            lstDepositReports.Add(month);


            return lstDepositReports;
        }


        public List<DepositReport> GetInvestmentReport()
        {
            List<DepositReport> lstDepositReports = new List<DepositReport>();
            var dateTimeNow = DateTime.Now;
            //var transactionFor = db.TransactionFor.FirstOrDefault(x => x.TranscationFor.Equals(transactionForStr));

            DepositReport month = new DepositReport();
            month.MonthStartDate = new DateTime(2000, 1, 1);
            month.MonthEndDate = new DateTime(dateTimeNow.Year - 1, 12, 31);
            month.MonthDesc = "Till Dec-" + (dateTimeNow.Year - 1);

            month.Users = new List<User>();

            db.Investments.Where(x => x.IsMonthlyRecurrent && x.InvestmentType == "Investment").GroupBy(x => x.InvestmentName).ToList().ForEach(x =>
            {
                User user = new User();
                user.Person = new Person();
                user.Person.PersonName = x.Key;
                var items = x.Where(y => y.InvestmentDate >= month.MonthStartDate && y.InvestmentDate <= month.MonthEndDate)
                .ToList();

                if (items == null || items.Count == 0)
                    user.Amount = 0;
                else
                    user.Amount = items.Select(y => y.Amount).Sum();
                month.Users.Add(user);
            });
            month.TotalOfMonth = month.Users.Select(z => z.Amount).Sum();
            lstDepositReports.Add(month);


            for (int i = 1; i <= 12; i++)
            {
                month = new DepositReport();
                month.MonthStartDate = new DateTime(dateTimeNow.Year, i, 1);
                month.MonthEndDate = month.MonthStartDate.AddMonths(1).AddDays(-1);
                month.MonthDesc = month.MonthStartDate.ToString("MMM");

                month.Users = new List<User>();

                db.Investments.Where(x => x.IsMonthlyRecurrent && x.InvestmentType == "Investment").GroupBy(x => x.InvestmentName).ToList().ForEach(x =>
                {
                    User user = new User();
                    user.Person = new Person();
                    user.Person.PersonName = x.Key;
                    var items = x.Where(y => y.InvestmentDate >= month.MonthStartDate
                    && y.InvestmentDate <= month.MonthEndDate).ToList();
                    if (items == null || items.Count == 0)
                        user.Amount = 0;
                    else
                        user.Amount = items.Select(y => y.Amount).Sum();
                    month.Users.Add(user);
                });
                month.TotalOfMonth = month.Users.Select(z => z.Amount).Sum();
                lstDepositReports.Add(month);
            }

            month = new DepositReport();
            month.MonthStartDate = new DateTime(dateTimeNow.Year, 1, 1);
            month.MonthEndDate = new DateTime(dateTimeNow.Year, 12, 31);
            month.MonthDesc = "Total Of " + (dateTimeNow.Year);

            month.Users = new List<User>();

            db.Investments.Where(x => x.IsMonthlyRecurrent && x.InvestmentType == "Investment").GroupBy(x => x.InvestmentName).ToList().ForEach(x =>
            {
                User user = new User();
                user.Person = new Person();
                user.Person.PersonName = x.Key;

                var items = x.Where(y => y.InvestmentDate >= month.MonthStartDate
                && y.InvestmentDate <= month.MonthEndDate).ToList();
                if (items == null || items.Count == 0)
                    user.Amount = 0;
                else
                    user.Amount = items.Select(y => y.Amount).Sum();
                month.Users.Add(user);
            });
            month.TotalOfMonth = month.Users.Select(z => z.Amount).Sum();
            lstDepositReports.Add(month);


            month = new DepositReport();
            month.MonthStartDate = new DateTime(2000, 1, 1);
            month.MonthEndDate = new DateTime(dateTimeNow.Year, 12, 31);
            month.MonthDesc = "Grand Total";

            month.Users = new List<User>();

            db.Investments.Where(x => x.IsMonthlyRecurrent && x.InvestmentType == "Investment").GroupBy(x => x.InvestmentName).ToList().ForEach(x =>
            {
                User user = new User();
                user.Person = new Person();
                user.Person.PersonName = x.Key;

                var items = x.Where(y => y.InvestmentDate >= month.MonthStartDate
                && y.InvestmentDate <= month.MonthEndDate).ToList();

                if (items == null || items.Count == 0)
                    user.Amount = 0;
                else
                    user.Amount = items.Select(y => y.Amount).Sum();
                month.Users.Add(user);
            });

            month.TotalOfMonth = month.Users.Select(z => z.Amount).Sum();
            lstDepositReports.Add(month);


            return lstDepositReports;
        }

        public List<TransactionReport> GetOutstandingReport(string transactionForStr, string returnTransacationForStr)
        {
            var transactionFor = db.TransactionFor.FirstOrDefault(x => x.TranscationFor.Equals(transactionForStr));
            var returnTransactionFor = db.TransactionFor.FirstOrDefault(x => x.TranscationFor.Equals(returnTransacationForStr));
            return db.Transactions
                .Include(t => t.Person)
                .Include(x => x.TransactionFor)
                .Where(x => x.TranscationForGuid == transactionFor.TranscationForGuid ||
                        x.TranscationForGuid == returnTransactionFor.TranscationForGuid)
                .OrderBy(x => x.PersonGuid)
                .ToList()
                .Select(x =>
                {
                    var newObj = new TransactionReport()
                    {
                        TranscationGuid = x.TranscationGuid,
                        TranscationType = x.TranscationType,
                        TranscationForGuid = x.TranscationForGuid,
                        //Amount = x.Amount,
                        TransactionDate = x.TransactionDate,
                        PersonGuid = x.PersonGuid,
                        Person = x.Person,
                        TransactionFor = x.TransactionFor,
                        Interest = x.Interest,
                        CurrentDate = DateTime.Now,
                        TotalDays = 0,
                        CalculatedInterest = 0
                    };
                    newObj.Amount = x.TranscationForGuid == transactionFor.TranscationForGuid ? x.Amount : 0;
                    newObj.ReturnedAmount = x.TranscationForGuid == returnTransactionFor.TranscationForGuid ? x.Amount : 0;
                    return newObj;
                }).ToList();
        }

        public List<Investment> GetInvestmentReport(string investmentType)
        {
            return db.Investments.Where(x => x.InvestmentType == investmentType).ToList();
        }

        public List<BalanceSheetItem> GetBalanceSheetData()
        {
            List<BalanceSheetItem> data = new List<BalanceSheetItem>();

            BalanceSheetItem monthlyEMI = new BalanceSheetItem();
            monthlyEMI.Amount = GetTotalOf("Monthly EMI");
            monthlyEMI.BalancesheetItem = "Total from \"Month wise status report\"";
            monthlyEMI.Transaction = Enum.Enums.TransactionType.Credit;
            data.Add(monthlyEMI);

            BalanceSheetItem PastInterest = new BalanceSheetItem();
            PastInterest.Amount = GetInvestmentReport("Past Year Interest").Sum(x => x.Amount);
            PastInterest.BalancesheetItem = "Total Interest of 2016-2019";
            PastInterest.Transaction = Enum.Enums.TransactionType.Credit;
            data.Add(PastInterest);

            BalanceSheetItem Interest2020 = new BalanceSheetItem();
            Interest2020.Amount = GetTotalOf("Interest(Self)");
            Interest2020.BalancesheetItem = "Total Interest of 2020";
            Interest2020.Transaction = Enum.Enums.TransactionType.Credit;
            data.Add(Interest2020);

            BalanceSheetItem otherCredit = new BalanceSheetItem();
            otherCredit.Amount = GetInvestmentReport("Other").Where(x => x.TranscationType == Enum.Enums.TransactionType.Credit).Sum(x => x.Amount);
            otherCredit.BalancesheetItem = "Other (Credit)";
            otherCredit.Transaction = Enum.Enums.TransactionType.Credit;
            data.Add(otherCredit);

            BalanceSheetItem dueMoney = new BalanceSheetItem();
            dueMoney.Amount = GetTotalOf("WithDraw Money(Self)") + GetTotalOf("Return Money(Self)");
            dueMoney.BalancesheetItem = "Due Money";
            dueMoney.Transaction = Enum.Enums.TransactionType.Debit;
            data.Add(dueMoney);

            BalanceSheetItem investment = new BalanceSheetItem();
            investment.Amount = GetTotalOf("WithDraw Money(Self)") + GetTotalOf("Return Money(Self)");
            investment.BalancesheetItem = "Investment";
            investment.Transaction = Enum.Enums.TransactionType.Debit;
            data.Add(investment);

            BalanceSheetItem bankBalance = new BalanceSheetItem();
            bankBalance.Amount = GetInvestmentReport("Bank Balance").Sum(x => x.Amount);
            bankBalance.BalancesheetItem = "Bank Balance";
            bankBalance.Transaction = Enum.Enums.TransactionType.Debit;
            data.Add(bankBalance);

            BalanceSheetItem otherDebit = new BalanceSheetItem();
            otherDebit.Amount = GetInvestmentReport("Other").Where(x => x.TranscationType == Enum.Enums.TransactionType.Debit).Sum(x => x.Amount);
            otherDebit.BalancesheetItem = "Other (Debit)";
            otherDebit.Transaction = Enum.Enums.TransactionType.Debit;
            data.Add(otherDebit);

            return data;
        }

        public decimal GetTotalOf(string transactionForStr)
        {
            var transactionFor = db.TransactionFor.FirstOrDefault(x => x.TranscationFor.Equals(transactionForStr));
            return db.Transactions.Where(y => y.TranscationForGuid == transactionFor.TranscationForGuid).ToList().Sum(x => x.Amount);
        }
    }
}