namespace MixupActivity.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Mixupv1 : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.TechnologyContents", "IsActive", c => c.Boolean(nullable: false));
        }
        
        public override void Down()
        {
            DropColumn("dbo.TechnologyContents", "IsActive");
        }
    }
}
