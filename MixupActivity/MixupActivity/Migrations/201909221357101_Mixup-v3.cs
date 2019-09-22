namespace MixupActivity.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Mixupv3 : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.People", "IsAdmin", c => c.Boolean(nullable: false));
            AddColumn("dbo.Transactions", "IsApproved", c => c.Boolean());
        }
        
        public override void Down()
        {
            DropColumn("dbo.Transactions", "IsApproved");
            DropColumn("dbo.People", "IsAdmin");
        }
    }
}
