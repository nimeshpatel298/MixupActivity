namespace MixupActivity.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Mixupv4 : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Transactions", "Interest", c => c.Decimal(nullable: false, precision: 18, scale: 2));
        }
        
        public override void Down()
        {
            DropColumn("dbo.Transactions", "Interest");
        }
    }
}
