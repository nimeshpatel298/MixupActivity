namespace MixupActivity.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Mixupv5 : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Investments",
                c => new
                    {
                        InvestmentGuid = c.Guid(nullable: false, identity: true),
                        InvestmentName = c.String(),
                        Amount = c.Int(nullable: false),
                        InvestmentDate = c.String(),
                        IsMonthlyRecurrent = c.Boolean(nullable: false),
                    })
                .PrimaryKey(t => t.InvestmentGuid);
            
        }
        
        public override void Down()
        {
            DropTable("dbo.Investments");
        }
    }
}
