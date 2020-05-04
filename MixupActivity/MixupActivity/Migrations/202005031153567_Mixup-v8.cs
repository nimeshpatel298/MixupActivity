namespace MixupActivity.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Mixupv8 : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Investments", "InvestmentType", c => c.String(nullable: false));
            AddColumn("dbo.Investments", "TranscationType", c => c.Int(nullable: false));
        }
        
        public override void Down()
        {
            DropColumn("dbo.Investments", "TranscationType");
            DropColumn("dbo.Investments", "InvestmentType");
        }
    }
}
