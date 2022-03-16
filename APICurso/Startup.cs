using APICurso.Application.IServices;
using APICurso.Application.Services;
using APICurso.Infra.Contexts;
using APICurso.Infra.IRepositories;
using APICurso.Infra.Repositories;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Microsoft.OpenApi.Models;
using System.Collections.Generic;
using System.Globalization;

namespace APICurso
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
            //Obtem a string de conexão com o banco de dados
            var connection = Configuration["ConnectionStrings:DefaultConection"];           
            services.AddDbContext<Context>(options => options.UseSqlServer(connection));          
            services.Configure<RequestLocalizationOptions>(options =>
            {
                options.DefaultRequestCulture = new Microsoft.AspNetCore.Localization.RequestCulture("pt-BR");
                options.SupportedCultures = new List<CultureInfo> { new CultureInfo("pt-BR"), new CultureInfo("pt-BR") };
            });

          
           
            services.AddTransient<ILimiteClienteService, LimiteClienteService>();
            services.AddTransient<ILogService, LogService>();                   
            services.AddTransient<ILimiteClienteRepository, LimiteClienteRepository>();
            services.AddTransient<ILogRepository, LogRepository>();     
            services.AddControllers();
            services.AddSwaggerGen(c =>
            {
                c.SwaggerDoc("1-VERSÃO", new OpenApiInfo { Title = "APICurso ", Version = "1-VERSÃO" });
            });
        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
        {
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
                app.UseSwagger();
                app.UseSwaggerUI(c => c.SwaggerEndpoint("/swagger/1-VERSÃO/swagger.json", "APICurso 1-VERSÃO"));            }

            app.UseHttpsRedirection();
            app.UseRouting();
            app.UseAuthorization();
            app.UseEndpoints(endpoints =>
            {
                endpoints.MapControllers();
            });
        }
    }
}
