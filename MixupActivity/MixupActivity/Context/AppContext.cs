﻿using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using MixupActivity.Models;

namespace MixupActivity.Context
{
    public class AppContext : DbContext
    {
        public AppContext() : base("AppContextEntities")
        {
            //Database.SetInitializer(new AppDataInitializer());
            Database.SetInitializer(new MigrateDatabaseToLatestVersion<AppContext, MixupActivity.Migrations.Configuration>());
        }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Transaction>()
            .HasRequired<Person>(s => s.Person)
            .WithMany(g => g.Transacctions)
            .HasForeignKey<Guid>(s => s.PersonGuid);

            modelBuilder.Entity<TechnologyContent>()
                .HasRequired<Technology>(x => x.Technology)
                .WithMany(x => x.TechnologyContents)
                .HasForeignKey<Guid>(s => s.TechnologyGuid);

            //modelBuilder.Entity<Transaction>()
            //.HasRequired<TransactionFor>(s => s.TransactionFor)
            //.WithMany(g => g.Transactions)
            //.HasForeignKey<Guid>(s => s.TranscationGuid);

            base.OnModelCreating(modelBuilder);
        }

        public DbSet<Transaction> Transactions { get; set; }
        public DbSet<Person> Persons { get; set; }
        public DbSet<TransactionFor> TransactionFor { get; set; }
        public DbSet<Technology> Technologies { get; set; }
        public DbSet<TechnologyContent> TechnologyContent { get; set; }
        public DbSet<Investment> Investments { get; set; }
    }
}