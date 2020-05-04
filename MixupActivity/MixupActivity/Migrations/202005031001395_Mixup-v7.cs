namespace MixupActivity.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Mixupv7 : DbMigration
    {
        public override void Up()
        {
            AlterColumn("dbo.Investments", "InvestmentName", c => c.String(nullable: false));
        }
        
        public override void Down()
        {
            AlterColumn("dbo.Investments", "InvestmentName", c => c.String());
        }
    }
}
