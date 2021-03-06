using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using GimbaDeal.Data;
using GimbaDeal.Models;
using GimbaDeal.Services;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.SpaServices.Webpack;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;

namespace GimbaDeal
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
            services.AddDbContext<GimbaDealDbContext>(options => options.UseSqlServer(Configuration.GetConnectionString("EntrevistaDealGimba")));
            services.AddScoped<IDataCliente, ClienteDataSql>();
            services.AddScoped<IDataEndereco, EnderecoDataSql>();
            services.AddScoped<IDataHelper<ComplementoEndereco>, ComplementoEnderecoDataSql>();
            services.AddScoped<IDataHelper<Emails>, EmailDataSql>();
            services.AddScoped<IDataHelper<Socio>, SocioDataSql>();
            services.AddScoped<IDataHelper<Telefone>, TelefoneDataSql>();
            services.AddMvc();
        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IHostingEnvironment env)
        {
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
                app.UseWebpackDevMiddleware(new WebpackDevMiddlewareOptions
                {
                    HotModuleReplacement = true
                });
            }
            else
            {
                app.UseExceptionHandler("/Home/Error");
            }

            app.UseStaticFiles();

            app.UseMvc(routes =>
            {
                routes.MapRoute(
                    name: "default",
                    template: "{controller=Home}/{action=Index}/{id?}");

                routes.MapSpaFallbackRoute(
                    name: "spa-fallback",
                    defaults: new { controller = "Home", action = "Index" });
            });
        }
    }
}
