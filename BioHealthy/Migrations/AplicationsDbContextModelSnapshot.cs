﻿// <auto-generated />
using BioHealthy.Data;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;

namespace BioHealthy.Migrations
{
    [DbContext(typeof(ApplicationUser))]
    partial class AplicationsDbContextModelSnapshot : ModelSnapshot
    {
        protected override void BuildModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "2.1.11-servicing-32099")
                .HasAnnotation("Relational:MaxIdentifierLength", 128)
                .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

            modelBuilder.Entity("BioHealthy.Data.Cargo", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("Descripcion");

                    b.HasKey("Id");

                    b.ToTable("cargo");
                });

            modelBuilder.Entity("BioHealthy.Data.Ciudades", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<int>("Ciudad");

                    b.HasKey("Id");

                    b.ToTable("Ciudad");
                });

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

                    b.ToTable("Empleado");
                });

            modelBuilder.Entity("BioHealthy.Data.Huellas", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<int>("Huella");

                    b.Property<int>("NombreHuella");

                    b.HasKey("Id");

                    b.ToTable("Huellas");
                });

            modelBuilder.Entity("BioHealthy.Data.User", b =>
                {
                    b.Property<int>("id")
                        .ValueGeneratedOnAdd()
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<int>("email");

                    b.Property<string>("password");

                    b.HasKey("id");

                    b.ToTable("Admin");
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

                    b.ToTable("Visitante");
                });
#pragma warning restore 612, 618
        }
    }
}
