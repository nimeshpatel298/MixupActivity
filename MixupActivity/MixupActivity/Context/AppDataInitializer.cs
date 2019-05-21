using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using MixupActivity.Models;

namespace MixupActivity.Context
{
    public class AppDataInitializer : DropCreateDatabaseAlways<AppContext>
    {
        protected override void Seed(AppContext context)
        {
            context.Persons.AddRange(new List<Person>
            {
                new Person
                {
                     LoginId = "Nimesh",
                     PersonName = "Nimesh"
                },
                new Person
                {
                     LoginId = "Ashish",
                     PersonName = "Ashish"
                }
            });

            context.TransactionFor.AddRange(new List<TransactionFor>
            {
                new TransactionFor
                {
                    TranscationFor = "Monthly EMI",
                    TransactionType = 1
                },
                new TransactionFor
                {
                    TranscationFor = "Return Money(Self)",
                    TransactionType = 1
                },
                new TransactionFor
                {
                    TranscationFor = "Return Money(Third Party)",
                    TransactionType = 1
                },
                new TransactionFor
                {
                    TranscationFor = "Interest(Self)",
                    TransactionType = 1
                },
                new TransactionFor
                {
                    TranscationFor = "Interest(Third Party)",
                    TransactionType = 1
                },

                new TransactionFor
                {
                    TranscationFor = "WithDraw Money(Self)",
                    TransactionType = 2
                },
                new TransactionFor
                {
                    TranscationFor = "WithDraw Money(Third Party)",
                    TransactionType = 2
                },

                new TransactionFor
                {
                    TranscationFor = "SIP",
                    TransactionType = 2
                },

                new TransactionFor
                {
                    TranscationFor = "Expense",
                    TransactionType = 2
                },

            });

            base.Seed(context);
        }
    }
}