namespace MixupActivity.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class InitialCreate : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.People",
                c => new
                    {
                        PersonGuid = c.Guid(nullable: false, identity: true),
                        LoginId = c.String(),
                        Password = c.String(),
                        PersonName = c.String(),
                        Email = c.String(),
                        Mobile = c.String(),
                    })
                .PrimaryKey(t => t.PersonGuid);
            
            CreateTable(
                "dbo.Transactions",
                c => new
                    {
                        TranscationGuid = c.Guid(nullable: false),
                        TranscationType = c.Int(nullable: false),
                        TranscationForGuid = c.Guid(nullable: false),
                        Amount = c.Decimal(nullable: false, precision: 18, scale: 2),
                        TransactionDate = c.DateTime(nullable: false),
                        PersonGuid = c.Guid(nullable: false),
                    })
                .PrimaryKey(t => t.TranscationGuid)
                .ForeignKey("dbo.People", t => t.PersonGuid, cascadeDelete: true)
                .ForeignKey("dbo.TransactionFors", t => t.TranscationForGuid, cascadeDelete: true)
                .Index(t => t.TranscationForGuid)
                .Index(t => t.PersonGuid);
            
            CreateTable(
                "dbo.TransactionFors",
                c => new
                    {
                        TranscationForGuid = c.Guid(nullable: false, identity: true),
                        TranscationFor = c.String(nullable: false),
                        TransactionType = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.TranscationForGuid);
            
            CreateTable(
                "dbo.Technologies",
                c => new
                    {
                        TechnologyGuid = c.Guid(nullable: false),
                        TechnologyName = c.String(nullable: false),
                        Priority = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.TechnologyGuid);
            
            CreateTable(
                "dbo.TechnologyContents",
                c => new
                    {
                        TechnologyContentGuid = c.Guid(nullable: false),
                        Topic = c.String(nullable: false),
                        Description = c.String(),
                        Example = c.String(),
                        Link = c.String(),
                        TechnologyGuid = c.Guid(nullable: false),
                    })
                .PrimaryKey(t => t.TechnologyContentGuid)
                .ForeignKey("dbo.Technologies", t => t.TechnologyGuid, cascadeDelete: true)
                .Index(t => t.TechnologyGuid);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.TechnologyContents", "TechnologyGuid", "dbo.Technologies");
            DropForeignKey("dbo.Transactions", "TranscationForGuid", "dbo.TransactionFors");
            DropForeignKey("dbo.Transactions", "PersonGuid", "dbo.People");
            DropIndex("dbo.TechnologyContents", new[] { "TechnologyGuid" });
            DropIndex("dbo.Transactions", new[] { "PersonGuid" });
            DropIndex("dbo.Transactions", new[] { "TranscationForGuid" });
            DropTable("dbo.TechnologyContents");
            DropTable("dbo.Technologies");
            DropTable("dbo.TransactionFors");
            DropTable("dbo.Transactions");
            DropTable("dbo.People");
        }
    }
}
