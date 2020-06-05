using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Mvc;
using log4net;
using MixupActivity.Models;
using MixupActivity.Services;
using OfficeOpenXml;
using OfficeOpenXml.Style;

namespace MixupActivity.Controllers
{
    [Authorize()]
    public class DepositReportController : Controller
    {
        private Context.AppContext db = new Context.AppContext();
        private static readonly ILog log = log4net.LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);
        public ActionResult Index()
        {
            ViewBag.Persons = db.Persons.ToList();

            DepositService service = new DepositService();
            return View(service.GetReport("Monthly EMI"));
        }

        public ActionResult ReturnMoneySelf()
        {
            ViewBag.Persons = db.Persons.ToList();

            DepositService service = new DepositService();
            return View("Index", service.GetReport("Return Money(Self)"));
        }

        public ActionResult ReturnMoneyOutside()
        {
            ViewBag.Persons = db.Persons.ToList();

            DepositService service = new DepositService();
            return View("Index", service.GetReport("Return Money(Third Party)"));
        }

        public ActionResult PaidInterestSelf()
        {
            ViewBag.Persons = db.Persons.ToList();

            DepositService service = new DepositService();
            return View("Index", service.GetReport("Interest(Self)"));
        }

        public ActionResult PaidInterestThirdParty()
        {
            ViewBag.Persons = db.Persons.ToList();

            DepositService service = new DepositService();
            return View("Index", service.GetReport("Interest(Third Party)"));
        }

        public ActionResult ExportToExcel()
        {
            return View();
        }

        public ActionResult DownloadToExcel()
        {

            var users = db.Persons.ToList();

            using (ExcelPackage Ep = new ExcelPackage())
            {
                CreateDepositSheet(Ep, users);
                CreateInterestSheet(Ep, users);
                CreateInvestmentSheet(Ep);
                CreateBalanceSheet(Ep);

                //Response.Clear();
                //Response.ContentType = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";
                //Response.AddHeader("content-disposition", "attachment: filename=" + "Mixup_Report.xlsx");
                //Response.BinaryWrite(Ep.GetAsByteArray());
                //Response.End();

                var bytes = Ep.GetAsByteArray();


                return File(new MemoryStream(bytes, 0, bytes.Length), "application/octet-stream", DateTime.Now.ToString("MMM") + "_" + DateTime.Now.Year + ".xlsx");
            }

        }

        public void CreateDepositSheet(ExcelPackage Ep, List<Person> users)
        {
            DepositService service = new DepositService();
            var collection = service.GetReport("Monthly EMI");


            ExcelWorksheet Sheet = Ep.Workbook.Worksheets.Add("Deposit Report");

            var startCol = 'B';
            var startRow = 1;
            var endCol = 'H';
            var endRow = 1;
            var hearder = string.Format("{0}{1}:{2}{3}", startCol, startRow, endCol, endRow);
            Sheet.Cells[hearder].Value = "MIXUP ACCOUNT";
            Sheet.Cells[hearder].Style.HorizontalAlignment = ExcelHorizontalAlignment.Center;
            Color purple = ColorTranslator.FromHtml("#7030a0");
            //Sheet.Cells[string.Format("{0}{1}:{2}{3}", startCol, preserveStartRow, endCol, startRow)].Style.Fill.PatternType = ExcelFillStyle.Solid;
            Sheet.Cells[hearder].Style.Font.Size = 22;
            Sheet.Cells[hearder].Style.Font.Color.SetColor(purple);
            Sheet.Cells[hearder].Merge = true;

            Sheet.Cells[hearder].Style.Border.Top.Style = ExcelBorderStyle.Thin;
            Sheet.Cells[hearder].Style.Border.Right.Style = ExcelBorderStyle.Thin;
            Sheet.Cells[hearder].Style.Border.Bottom.Style = ExcelBorderStyle.Thin;
            Sheet.Cells[hearder].Style.Border.Left.Style = ExcelBorderStyle.Thin;

            CreateTable(users, collection, Sheet, 2, 'B', "Month Wise Money Deposit");

            Sheet.Cells["A:AZ"].AutoFitColumns();
        }

        private static void CreateTable(List<Person> users, List<DepositReport> collection, ExcelWorksheet Sheet, int startRow, char startCol, string header)
        {
            var preserveStartRow = startRow;
            var endCol = (char)((int)startCol + users.Count + 1);

            Sheet.Cells[string.Format("{0}{1}:{2}{3}", startCol, preserveStartRow, endCol, startRow)].Value = header;
            Sheet.Cells[string.Format("{0}{1}:{2}{3}", startCol, preserveStartRow, endCol, startRow)].Style.HorizontalAlignment = ExcelHorizontalAlignment.Center;
            Color purple = ColorTranslator.FromHtml("#bfbfbf");
            Sheet.Cells[string.Format("{0}{1}:{2}{3}", startCol, preserveStartRow, endCol, startRow)].Style.Fill.PatternType = ExcelFillStyle.Solid;
            Sheet.Cells[string.Format("{0}{1}:{2}{3}", startCol, preserveStartRow, endCol, startRow)].Style.Fill.BackgroundColor.SetColor(purple);
            Sheet.Cells[string.Format("{0}{1}:{2}{3}", startCol, preserveStartRow, endCol, startRow)].Merge = true;

            startRow++;

            Color backColor = ColorTranslator.FromHtml("#494429");
            Color headerFont = ColorTranslator.FromHtml("#92d050");

            Sheet.Cells[string.Format("{0}{1}", startCol, startRow)].Value = "Month";
            Sheet.Cells[string.Format("{0}{1}", startCol, startRow)].Style.Font.Color.SetColor(headerFont);
            Sheet.Cells[string.Format("{0}{1}", startCol, startRow)].Style.Fill.PatternType = ExcelFillStyle.Solid;
            Sheet.Cells[string.Format("{0}{1}", startCol, startRow)].Style.Fill.BackgroundColor.SetColor(backColor);

            char col = (char)((int)startCol + 1);
            foreach (var user in users)
            {
                //log.Error(user.PersonName + ": " + string.Format("{0}2", col));
                Sheet.Cells[string.Format("{0}{1}", col, startRow)].Value = user.PersonName;
                Sheet.Cells[string.Format("{0}{1}", col, startRow)].Style.Font.Color.SetColor(headerFont);
                Sheet.Cells[string.Format("{0}{1}", col, startRow)].Style.Fill.PatternType = ExcelFillStyle.Solid;
                Sheet.Cells[string.Format("{0}{1}", col, startRow)].Style.Fill.BackgroundColor.SetColor(backColor);
                col++;
            }
            Sheet.Cells[string.Format("{0}{1}", col, startRow)].Value = "Total Of Month";
            Sheet.Cells[string.Format("{0}{1}", col, startRow)].Style.Font.Color.SetColor(headerFont);
            Sheet.Cells[string.Format("{0}{1}", col, startRow)].Style.Fill.PatternType = ExcelFillStyle.Solid;
            Sheet.Cells[string.Format("{0}{1}", col, startRow)].Style.Fill.BackgroundColor.SetColor(backColor);

            startRow++;
            startRow++;

            int row = startRow;


            foreach (var item in collection)
            {

                Sheet.Cells[string.Format("{0}{1}", startCol, row)].Value = item.MonthDesc;
                col = (char)((int)startCol + 1);
                foreach (var user in item.Users)
                {
                    if (user.Amount > 0)
                    {
                        Sheet.Cells[string.Format("{0}{1}", col, row)].Value = user.Amount;
                        Sheet.Cells[string.Format("{0}{1}", col, row)].Style.Numberformat.Format = "₹##,##,##0";
                    }
                    col++;
                }

                if (item.TotalOfMonth > 0)
                {
                    Sheet.Cells[string.Format("{0}{1}", col, row)].Value = item.TotalOfMonth;
                    Sheet.Cells[string.Format("{0}{1}", col, row)].Style.Numberformat.Format = "₹##,##,##0";
                }

                if (row == (preserveStartRow + 3) || row == (preserveStartRow + 17) || row == (preserveStartRow + 19))
                {

                    Sheet.Cells[string.Format("{1}{0}:{2}{0}", row, startCol, endCol)].Style.Font.Color.SetColor(headerFont);
                    Sheet.Cells[string.Format("{1}{0}:{2}{0}", row, startCol, endCol)].Style.Fill.PatternType = ExcelFillStyle.Solid;
                    Sheet.Cells[string.Format("{1}{0}:{2}{0}", row, startCol, endCol)].Style.Fill.BackgroundColor.SetColor(backColor);
                }
                row++;
                startRow++;
                if (row == (preserveStartRow + 16) || row == (preserveStartRow + 18))
                {
                    row++;
                    startRow++;
                }
            }

            Sheet.Cells[string.Format("{0}{1}:{2}{3}", startCol, preserveStartRow, endCol, startRow - 1)].Style.Border.Top.Style = ExcelBorderStyle.Thin;
            Sheet.Cells[string.Format("{0}{1}:{2}{3}", startCol, preserveStartRow, endCol, startRow - 1)].Style.Border.Right.Style = ExcelBorderStyle.Thin;
            Sheet.Cells[string.Format("{0}{1}:{2}{3}", startCol, preserveStartRow, endCol, startRow - 1)].Style.Border.Bottom.Style = ExcelBorderStyle.Thin;
            Sheet.Cells[string.Format("{0}{1}:{2}{3}", startCol, preserveStartRow, endCol, startRow - 1)].Style.Border.Left.Style = ExcelBorderStyle.Thin;

            // Sheet.Cells["A1:G20"].Style.Border.


        }

        public void CreateInterestSheet(ExcelPackage Ep, List<Person> users)
        {

            ExcelWorksheet Sheet = Ep.Workbook.Worksheets.Add("Interest");

            DepositService service = new DepositService();
            var collection = service.GetReport("Return Money(Self)");
            var interestPaidSelf = service.GetReport("Interest(Self)");
            var interestPaidThirdParty = service.GetReport("Interest(Third Party)");
            var investmentData = service.GetInvestmentReport("Bank Interest");
            var bankBalance = service.GetInvestmentReport("Bank Balance");
            var pastYearInterestData = service.GetInvestmentReport("Past Year Interest");
            var other = service.GetInvestmentReport("Other");


            CreateTable(users, collection, Sheet, 2, 'B', "Return Installment");

            CreateTable(users, interestPaidSelf, Sheet, 2, 'J', "Paid Interest");

            CreateTable(users, interestPaidThirdParty, Sheet, 2, 'R', "Outside Paid Interest");

            var transactioReportData = service.GetOutstandingReport("WithDraw Money(Self)", "Return Money(Self)");
            var outsideTransactioReportData = service.GetOutstandingReport("WithDraw Money(Third Party)", "Return Money(Third Party)");

            CreateTranscationReport(transactioReportData, outsideTransactioReportData, Sheet, 24, 'B');

            string[] columns = { "Date", "Interest" };
            CreateInvestmentReport(investmentData, Sheet, transactioReportData.Count + outsideTransactioReportData.Count + 30, 'B', "Bank Interest", columns, item => item.InvestmentDate.Date.ToString());
            string[] columns2 = { "Bank", "Amount" };
            CreateInvestmentReport(bankBalance, Sheet, transactioReportData.Count + outsideTransactioReportData.Count + 30, 'E', "Bank Balance", columns2, item => item.InvestmentName);
            string[] columns3 = { "Year", "Amount" };
            CreateInvestmentReport(pastYearInterestData, Sheet, transactioReportData.Count + outsideTransactioReportData.Count + 30, 'H', "Past Year Interest", columns3, item => item.InvestmentName);

            string[] columns4 = { "Reason", "Amount" };
            CreateInvestmentReport(other.Where(x => x.TranscationType == Enum.Enums.TransactionType.Credit).ToList(), Sheet, transactioReportData.Count + outsideTransactioReportData.Count + 30, 'K', "Other (Credit)", columns4, item => item.InvestmentName);

            string[] columns5 = { "Reason", "Amount" };
            CreateInvestmentReport(other.Where(x => x.TranscationType == Enum.Enums.TransactionType.Debit).ToList(), Sheet, transactioReportData.Count + outsideTransactioReportData.Count + 30, 'N', "Other (Debit)", columns5, item => item.InvestmentName);

            Sheet.Cells["A:AZ"].AutoFitColumns();
        }

        public void CreateTranscationReport(List<TransactionReport> collection, List<TransactionReport> collection2, ExcelWorksheet Sheet, int startRow, char startCol)
        {
            var preserveStartRow = startRow;
            var endCol = (char)((int)startCol + 9);
            Color headerBC = ColorTranslator.FromHtml("#bfbfbf");

            string[] columns = { "Name", "Amount", "Returned Amount", "Date", "Interest Rate", "Current Date", "Total Days", "Interest", "", "" };

            char col = (char)((int)startCol);
            foreach (var columnText in columns)
            {
                //log.Error(user.PersonName + ": " + string.Format("{0}2", col));
                Sheet.Cells[string.Format("{0}{1}", col, startRow)].Value = columnText;
                //Sheet.Cells[string.Format("{0}{1}", col, startRow)].Style.Font.Color.SetColor(headerBC);
                Sheet.Cells[string.Format("{0}{1}", col, startRow)].Style.Fill.PatternType = ExcelFillStyle.Solid;
                Sheet.Cells[string.Format("{0}{1}", col, startRow)].Style.Fill.BackgroundColor.SetColor(headerBC);
                col++;
            }
            startRow++;


            foreach (var item in collection)
            {
                col = (char)((int)startCol);
                Sheet.Cells[string.Format("{0}{1}", col, startRow)].Value = item.Person.PersonName;
                col++;
                if (item.Amount > 0)
                {
                    Sheet.Cells[string.Format("{0}{1}", col, startRow)].Value = item.Amount;
                    Sheet.Cells[string.Format("{0}{1}", col, startRow)].Style.Numberformat.Format = "₹##,##,##0";
                }
                col++;
                if (item.ReturnedAmount > 0)
                {
                    Sheet.Cells[string.Format("{0}{1}", col, startRow)].Value = item.ReturnedAmount;
                    Sheet.Cells[string.Format("{0}{1}", col, startRow)].Style.Numberformat.Format = "₹##,##,##0";
                }
                col++;
                Sheet.Cells[string.Format("{0}{1}", col, startRow)].Style.Numberformat.Format = "dd-mm-yyyy";
                Sheet.Cells[string.Format("{0}{1}", col, startRow)].Value = item.TransactionDate;
                col++;
                Sheet.Cells[string.Format("{0}{1}", col, startRow)].Value = item.Interest;
                col++;
                Sheet.Cells[string.Format("{0}{1}", col, startRow)].Style.Numberformat.Format = "dd-mm-yyyy";
                Sheet.Cells[string.Format("{0}{1}", col, startRow)].Value = item.CurrentDate;
                col++;
                Sheet.Cells[string.Format("{0}{1}", col, startRow)].Value = item.TotalDays;
                col++;
                Sheet.Cells[string.Format("{0}{1}", col, startRow)].Value = item.CalculatedInterest;

                startRow++;
            }

            col = (char)((int)startCol);
            Sheet.Cells[string.Format("{0}{1}", col, startRow)].Style.HorizontalAlignment = ExcelHorizontalAlignment.Center;
            Sheet.Cells[string.Format("{0}{1}:{2}{3}", col, startRow, endCol, startRow)].Merge = true;
            Sheet.Cells[string.Format("{0}{1}", col, startRow)].Value = "Outside";

            startRow++;

            foreach (var item in collection2)
            {
                col = (char)((int)startCol);
                Sheet.Cells[string.Format("{0}{1}", col, startRow)].Value = item.Person.PersonName;
                col++;
                if (item.Amount > 0)
                {
                    Sheet.Cells[string.Format("{0}{1}", col, startRow)].Value = item.Amount;
                    Sheet.Cells[string.Format("{0}{1}", col, startRow)].Style.Numberformat.Format = "₹##,##,##0";
                }
                col++;
                if (item.ReturnedAmount > 0)
                {
                    Sheet.Cells[string.Format("{0}{1}", col, startRow)].Value = item.ReturnedAmount;
                    Sheet.Cells[string.Format("{0}{1}", col, startRow)].Style.Numberformat.Format = "₹##,##,##0";
                }
                col++;
                Sheet.Cells[string.Format("{0}{1}", col, startRow)].Style.Numberformat.Format = "dd-mm-yyyy";
                Sheet.Cells[string.Format("{0}{1}", col, startRow)].Value = item.TransactionDate;
                col++;
                Sheet.Cells[string.Format("{0}{1}", col, startRow)].Value = item.Interest;
                col++;
                Sheet.Cells[string.Format("{0}{1}", col, startRow)].Style.Numberformat.Format = "dd-mm-yyyy";
                Sheet.Cells[string.Format("{0}{1}", col, startRow)].Value = item.CurrentDate;
                col++;
                Sheet.Cells[string.Format("{0}{1}", col, startRow)].Value = item.TotalDays;
                col++;
                Sheet.Cells[string.Format("{0}{1}", col, startRow)].Value = item.CalculatedInterest;

                startRow++;
            }


            col = (char)((int)startCol);
            Sheet.Cells[string.Format("{0}{1}", col, startRow)].Value = "Total Amount Due";
            col++;
            Sheet.Cells[string.Format("{0}{1}", col, startRow)].Value = collection.Sum(x => x.Amount) + collection2.Sum(x => x.Amount) - collection.Sum(x => x.ReturnedAmount) - collection2.Sum(x => x.ReturnedAmount);
            Sheet.Cells[string.Format("{0}{1}", col, startRow)].Style.Numberformat.Format = "₹##,##,##0";

            Sheet.Cells[string.Format("{0}{1}:{2}{3}", startCol, preserveStartRow, endCol, startRow)].Style.Border.Top.Style = ExcelBorderStyle.Thin;
            Sheet.Cells[string.Format("{0}{1}:{2}{3}", startCol, preserveStartRow, endCol, startRow)].Style.Border.Right.Style = ExcelBorderStyle.Thin;
            Sheet.Cells[string.Format("{0}{1}:{2}{3}", startCol, preserveStartRow, endCol, startRow)].Style.Border.Bottom.Style = ExcelBorderStyle.Thin;
            Sheet.Cells[string.Format("{0}{1}:{2}{3}", startCol, preserveStartRow, endCol, startRow)].Style.Border.Left.Style = ExcelBorderStyle.Thin;


        }

        public void CreateInvestmentSheet(ExcelPackage Ep)
        {
            var users = db.Investments.Where(x => x.IsMonthlyRecurrent).ToList().Select(x => x.InvestmentName).Distinct().Select(x =>
            {
                return new Person() { PersonName = x };
            });

            DepositService service = new DepositService();
            var collection = service.GetInvestmentReport(users.ToList());


            ExcelWorksheet Sheet = Ep.Workbook.Worksheets.Add("Investment");



            CreateTable(users.ToList(), collection, Sheet, 2, 'B', "Investment Details");

            Sheet.Cells["A:AZ"].AutoFitColumns();
        }

        public void CreateInvestmentReport(List<Investment> collection, ExcelWorksheet Sheet, int startRow, char startCol, string header, string[] columns, Func<Investment, string> predicate)
        {
            var preserveStartRow = startRow;
            var endCol = (char)((int)startCol + 1);
            Color headerBC = ColorTranslator.FromHtml("#bfbfbf");

            char col = (char)((int)startCol);
            Sheet.Cells[string.Format("{0}{1}", col, startRow)].Style.HorizontalAlignment = ExcelHorizontalAlignment.Center;
            Sheet.Cells[string.Format("{0}{1}:{2}{3}", col, startRow, endCol, startRow)].Merge = true;
            Sheet.Cells[string.Format("{0}{1}", col, startRow)].Value = header;

            startRow++;



            col = (char)((int)startCol);
            foreach (var columnText in columns)
            {
                //log.Error(user.PersonName + ": " + string.Format("{0}2", col));
                Sheet.Cells[string.Format("{0}{1}", col, startRow)].Value = columnText;
                //Sheet.Cells[string.Format("{0}{1}", col, startRow)].Style.Font.Color.SetColor(headerBC);
                Sheet.Cells[string.Format("{0}{1}", col, startRow)].Style.Fill.PatternType = ExcelFillStyle.Solid;
                Sheet.Cells[string.Format("{0}{1}", col, startRow)].Style.Fill.BackgroundColor.SetColor(headerBC);
                col++;
            }
            startRow++;

            foreach (var item in collection)
            {
                col = (char)((int)startCol);
                Sheet.Cells[string.Format("{0}{1}", col, startRow)].Style.Numberformat.Format = "dd-mm-yyyy";
                Sheet.Cells[string.Format("{0}{1}", col, startRow)].Value = predicate(item);
                col++;
                if (item.Amount > 0)
                {
                    Sheet.Cells[string.Format("{0}{1}", col, startRow)].Value = item.Amount;
                    Sheet.Cells[string.Format("{0}{1}", col, startRow)].Style.Numberformat.Format = "₹##,##,##0";
                }
                col++;

                startRow++;
            }

            col = (char)((int)startCol);
            Sheet.Cells[string.Format("{0}{1}", col, startRow)].Value = "Total";
            col++;
            Sheet.Cells[string.Format("{0}{1}", col, startRow)].Value = collection.Sum(x => x.Amount);
            Sheet.Cells[string.Format("{0}{1}", col, startRow)].Style.Numberformat.Format = "₹##,##,##0";
            col++;

            // startRow++;

            Sheet.Cells[string.Format("{0}{1}:{2}{3}", startCol, preserveStartRow, endCol, startRow)].Style.Border.Top.Style = ExcelBorderStyle.Thin;
            Sheet.Cells[string.Format("{0}{1}:{2}{3}", startCol, preserveStartRow, endCol, startRow)].Style.Border.Right.Style = ExcelBorderStyle.Thin;
            Sheet.Cells[string.Format("{0}{1}:{2}{3}", startCol, preserveStartRow, endCol, startRow)].Style.Border.Bottom.Style = ExcelBorderStyle.Thin;
            Sheet.Cells[string.Format("{0}{1}:{2}{3}", startCol, preserveStartRow, endCol, startRow)].Style.Border.Left.Style = ExcelBorderStyle.Thin;
        }

        public void CreateBalanceSheet(ExcelPackage Ep)
        {
            var users = db.Investments.Where(x => x.IsMonthlyRecurrent).ToList().Select(x => x.InvestmentName).Distinct().Select(x =>
            {
                return new Person() { PersonName = x };
            });

            DepositService service = new DepositService();
            var collection = service.GetBalanceSheetData();


            ExcelWorksheet Sheet = Ep.Workbook.Worksheets.Add("BalanceSheet");


            CreateBalanceSheet(collection, Sheet, 2, 'B');
            //CreateTable(users.ToList(), collection, Sheet, 2, 'B', "Investment Details");

            Sheet.Cells["A:AZ"].AutoFitColumns();
        }

        public void CreateBalanceSheet(List<BalanceSheetItem> collection, ExcelWorksheet Sheet, int startRow, char startCol)
        {
            var preserveStartRow = startRow;
            var endCol = (char)((int)startCol + 2);
            Color headerBC = ColorTranslator.FromHtml("#bfbfbf");
            Color backColor = ColorTranslator.FromHtml("#494429");
            Color headerFont = ColorTranslator.FromHtml("#92d050");

            char col = (char)((int)startCol);
            Sheet.Cells[string.Format("{0}{1}", col, startRow)].Style.HorizontalAlignment = ExcelHorizontalAlignment.Center;
            Sheet.Cells[string.Format("{0}{1}:{2}{3}", col, startRow, endCol, startRow)].Merge = true;
            Sheet.Cells[string.Format("{0}{1}", col, startRow)].Value = "Balance Sheet";
            Sheet.Cells[string.Format("{0}{1}", col, startRow)].Style.Fill.PatternType = ExcelFillStyle.Solid;
            Sheet.Cells[string.Format("{0}{1}", col, startRow)].Style.Fill.BackgroundColor.SetColor(headerBC);

            startRow++;

            string[] columns = { "", "Credit", "Debit" };

            col = (char)((int)startCol);
            foreach (var columnText in columns)
            {
                //log.Error(user.PersonName + ": " + string.Format("{0}2", col));
                Sheet.Cells[string.Format("{0}{1}", col, startRow)].Value = columnText;
                Sheet.Cells[string.Format("{0}{1}", col, startRow)].Style.Font.Color.SetColor(headerFont);
                Sheet.Cells[string.Format("{0}{1}", col, startRow)].Style.Fill.PatternType = ExcelFillStyle.Solid;
                Sheet.Cells[string.Format("{0}{1}", col, startRow)].Style.Fill.BackgroundColor.SetColor(backColor);



                col++;
            }
            startRow++;

            foreach (var item in collection)
            {
                col = (char)((int)startCol);
                Sheet.Cells[string.Format("{0}{1}", col, startRow)].Value = item.BalancesheetItem;
                col++;
                if (item.Transaction == Enum.Enums.TransactionType.Credit)
                {
                    Sheet.Cells[string.Format("{0}{1}", col, startRow)].Value = item.Amount;
                    Sheet.Cells[string.Format("{0}{1}", col, startRow)].Style.Numberformat.Format = "₹##,##,##0";
                }
                col++;

                if (item.Transaction == Enum.Enums.TransactionType.Debit)
                {
                    Sheet.Cells[string.Format("{0}{1}", col, startRow)].Value = item.Amount;
                    Sheet.Cells[string.Format("{0}{1}", col, startRow)].Style.Numberformat.Format = "₹##,##,##0";
                }

                startRow++;
            }

            var creditTotal = collection.Where(x => x.Transaction == Enum.Enums.TransactionType.Credit).Sum(x => x.Amount);
            var debitTotal = collection.Where(x => x.Transaction == Enum.Enums.TransactionType.Debit).Sum(x => x.Amount);
            col = (char)((int)startCol);
            Sheet.Cells[string.Format("{0}{1}", col, startRow)].Value = "Total";
            col++;
            Sheet.Cells[string.Format("{0}{1}", col, startRow)].Value = creditTotal;
            Sheet.Cells[string.Format("{0}{1}", col, startRow)].Style.Numberformat.Format = "₹##,##,##0";
            col++;
            Sheet.Cells[string.Format("{0}{1}", col, startRow)].Value = debitTotal;
            Sheet.Cells[string.Format("{0}{1}", col, startRow)].Style.Numberformat.Format = "₹##,##,##0";

            startRow++;

            col = (char)((int)startCol);
            Sheet.Cells[string.Format("{0}{1}", col, startRow)].Value = "Balance ( Credit - Debit )";
            col++;

            Sheet.Cells[string.Format("{0}{1}", col, startRow)].Style.HorizontalAlignment = ExcelHorizontalAlignment.Center;
            Sheet.Cells[string.Format("{0}{1}:{2}{3}", col, startRow, endCol, startRow)].Merge = true;

            Sheet.Cells[string.Format("{0}{1}", col, startRow)].Value = creditTotal - debitTotal;
            Sheet.Cells[string.Format("{0}{1}", col, startRow)].Style.Numberformat.Format = "₹##,##,##0";


            Sheet.Cells[string.Format("{0}{1}:{2}{3}", startCol, preserveStartRow, endCol, startRow)].Style.Border.Top.Style = ExcelBorderStyle.Thin;
            Sheet.Cells[string.Format("{0}{1}:{2}{3}", startCol, preserveStartRow, endCol, startRow)].Style.Border.Right.Style = ExcelBorderStyle.Thin;
            Sheet.Cells[string.Format("{0}{1}:{2}{3}", startCol, preserveStartRow, endCol, startRow)].Style.Border.Bottom.Style = ExcelBorderStyle.Thin;
            Sheet.Cells[string.Format("{0}{1}:{2}{3}", startCol, preserveStartRow, endCol, startRow)].Style.Border.Left.Style = ExcelBorderStyle.Thin;

        }
    }

}
