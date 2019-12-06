﻿
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;
using BioHealthy.Models;

namespace BioHealthy.Migrations
{
    [DbContext(typeof(ApplicationUser))]
    [Migration("20191205190627_Initial_Migration")]
    partial class Initial_Migration
    {
        protected override void BuildTargetModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "2.1.11-servicing-32099")
                .HasAnnotation("Relational:MaxIdentifierLength", 128)
                .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

            modelBuilder.Entity("BioHealthy.Data.Empleados", b =>
                {
                    b.Property<int>("id")
                        .ValueGeneratedOnAdd()
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("apellidos");

                    b.Property<string>("cargo");

                    b.Property<string>("ciudad");

                    b.Property<int>("documento");

                    b.Property<string>("nombre");

                    b.HasKey("id");

                    b.ToTable("ContactoItems");
                });

            modelBuilder.Entity("BioHealthy.Data.User", b =>
                {
                    b.Property<int>("id")
                        .ValueGeneratedOnAdd()
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<int>("email");

                    b.Property<string>("password");

                    b.HasKey("id");

                    b.ToTable("UserItems");
                });

            modelBuilder.Entity("BioHealthy.Data.Visitantes", b =>
                {
                    b.Property<int>("id")
                        .ValueGeneratedOnAdd()
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("apellidos");

                    b.Property<string>("cargo");

                    b.Property<string>("ciudad");

                    b.Property<int>("documento");

                    b.Property<string>("nombre");

                    b.HasKey("id");

                    b.ToTable("VisitanteItems");
                });
#pragma warning restore 612, 618
        }
    }
}
