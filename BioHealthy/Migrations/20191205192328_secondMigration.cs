using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;

namespace BioHealthy.Migrations
{
    public partial class secondMigration : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropPrimaryKey(
                name: "PK_VisitanteItems",
                table: "VisitanteItems");

            migrationBuilder.DropPrimaryKey(
                name: "PK_UserItems",
                table: "UserItems");

            migrationBuilder.DropPrimaryKey(
                name: "PK_ContactoItems",
                table: "ContactoItems");

            migrationBuilder.RenameTable(
                name: "VisitanteItems",
                newName: "Visitante");

            migrationBuilder.RenameTable(
                name: "UserItems",
                newName: "Admin");

            migrationBuilder.RenameTable(
                name: "ContactoItems",
                newName: "Empleado");

            migrationBuilder.AddPrimaryKey(
                name: "PK_Visitante",
                table: "Visitante",
                column: "id");

            migrationBuilder.AddPrimaryKey(
                name: "PK_Admin",
                table: "Admin",
                column: "id");

            migrationBuilder.AddPrimaryKey(
                name: "PK_Empleado",
                table: "Empleado",
                column: "id");

            migrationBuilder.CreateTable(
                name: "cargo",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn),
                    Descripcion = table.Column<string>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_cargo", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "Ciudad",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn),
                    Ciudad = table.Column<int>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Ciudad", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "Huellas",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn),
                    Huella = table.Column<int>(nullable: false),
                    NombreHuella = table.Column<int>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Huellas", x => x.Id);
                });
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "cargo");

            migrationBuilder.DropTable(
                name: "Ciudad");

            migrationBuilder.DropTable(
                name: "Huellas");

            migrationBuilder.DropPrimaryKey(
                name: "PK_Visitante",
                table: "Visitante");

            migrationBuilder.DropPrimaryKey(
                name: "PK_Empleado",
                table: "Empleado");

            migrationBuilder.DropPrimaryKey(
                name: "PK_Admin",
                table: "Admin");

            migrationBuilder.RenameTable(
                name: "Visitante",
                newName: "VisitanteItems");

            migrationBuilder.RenameTable(
                name: "Empleado",
                newName: "ContactoItems");

            migrationBuilder.RenameTable(
                name: "Admin",
                newName: "UserItems");

            migrationBuilder.AddPrimaryKey(
                name: "PK_VisitanteItems",
                table: "VisitanteItems",
                column: "id");

            migrationBuilder.AddPrimaryKey(
                name: "PK_ContactoItems",
                table: "ContactoItems",
                column: "id");

            migrationBuilder.AddPrimaryKey(
                name: "PK_UserItems",
                table: "UserItems",
                column: "id");
        }
    }
}
