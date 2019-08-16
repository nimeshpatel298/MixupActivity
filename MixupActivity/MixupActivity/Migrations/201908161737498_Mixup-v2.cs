namespace MixupActivity.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Mixupv2 : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.TechnologyContents", "SeqNo", c => c.Int(nullable: false));
        }
        
        public override void Down()
        {
            DropColumn("dbo.TechnologyContents", "SeqNo");
        }
    }
}
