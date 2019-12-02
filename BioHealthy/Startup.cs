
using BioHealthy.Data;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.SpaServices.AngularCli;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;



namespace BioHealthy
{
    public class Startup
    {
        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;
        }

        public IConfiguration Configuration { get; }


        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {
           services.AddMvc().SetCompatibilityVersion(CompatibilityVersion.Version_2_1);

            // In production, the Angular files will be served from this directory
            services.AddSpaStaticFiles(configuration =>
            {
                configuration.RootPath = "ClientApp/dist";
            });


            var connection = @"server=localhost;DataBase=BioHealthy;User ID=ACADEMICO/501; Password=cesde; Trusted_Connection=True; ConnectRetryCount=0";
            services.AddDbContext<AplicationsDbContext>(options => options.UseSqlServer(connection));
            /**var connection = @"Data Source=000.000.0.0;server=NameServer;DataBase=BioHealthy;User ID=Login; Password=****; Trusted_Connection=True; ConnectRetryCount=0";
            services.AddDbContext<MyDBContext>(options => options.UseSqlServer(connection));**/
           /** var connection = @"Server=(LocalDb)\\MSSQLLocalDB;Database=Biohealthy;Trusted_Connection=True;MultipleActiveResultSets=true";
            services.AddDbContext<MyDBContext>(options => options.UseSqlServer(connection));**/

        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IHostingEnvironment env)
        {
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
            }
            else
            {
                app.UseExceptionHandler("/Error");
                app.UseHsts();
            }

            app.UseHttpsRedirection();
            app.UseStaticFiles();
            app.UseSpaStaticFiles();

            app.UseMvc(routes =>
            {
                routes.MapRoute(
                    name: "default",
                    template: "{controller}/{action=Index}/{id?}");
            });

            app.UseSpa(spa =>
            {
                // To learn more about options for serving an Angular SPA from ASP.NET Core,
                // see https://go.microsoft.com/fwlink/?linkid=864501

                spa.Options.SourcePath = "ClientApp";

                if (env.IsDevelopment())
                {
                    spa.UseAngularCliServer(npmScript: "start");
                }
            });
        }
    }
}
