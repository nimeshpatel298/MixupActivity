namespace MixupActivity.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Mixupv6 : DbMigration
    {
        public override void Up()
        {
            AlterColumn("dbo.Investments", "InvestmentDate", c => c.DateTime(nullable: false));
        }
        
        public override void Down()
        {
            AlterColumn("dbo.Investments", "InvestmentDate", c => c.String());
        }
    }
}
