using Autofac;
using AutoMapper;
using LaunchAPI.Bootstrap;
using Microsoft.AspNetCore.Server.IISIntegration;
using System.Reflection;
using Autofac;
using Autofac.Extensions.DependencyInjection;

namespace LaunchAPI
{
    public class Startup
    {

        private readonly IConfiguration _configuration;
        private readonly IWebHostEnvironment _webHostEnvironment;

        public Startup(IConfiguration configuration, IWebHostEnvironment env)
        {
            _configuration = configuration;
            _webHostEnvironment = env;
        }

        public void Configure(IApplicationBuilder app, IMapper mapper)
        {
            if (_webHostEnvironment.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
            }
            else
            {
                app.UseExceptionHandler("/Error");
                // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
                app.UseHsts();
            }

            if (Build.IsDebug)
            {
                mapper.ConfigurationProvider.AssertConfigurationIsValid();
            }

            app.UseRouting();
            app.UseAuthorization();
            app.UseRequestLocalization("en-AU");
            app.UseEndpoints(endpoints => 
            {
                endpoints.MapControllers();
            });
        }

        public IServiceProvider ConfigureServices(IServiceCollection services)
        {
            RegisterAutoMapper(services);
            RegisterSecurity(services);
            return RegisterDependencies(services);
        }

        private IServiceProvider RegisterDependencies(IServiceCollection services)
        {
            var containerBuilder = new ContainerBuilder();
            containerBuilder.Populate(services);

            containerBuilder.AddRepositories();
            containerBuilder.AddServices();

            var container = containerBuilder.Build();
            return new AutofacServiceProvider(container);
        }

        static void RegisterAutoMapper(IServiceCollection services)
        {
            services.AddAutoMapper(
                cfg =>
                {
                    cfg.AddProfile<LaunchAPIMapper>();
                },
                new Assembly[0],
                ServiceLifetime.Scoped);
        }

        private static void RegisterSecurity(IServiceCollection services)
        {
            services.Configure<IISOptions>(options => options.AutomaticAuthentication = true);

            services.AddAuthentication(
                options =>
                {
                    options.DefaultScheme = IISDefaults.AuthenticationScheme;
                    options.DefaultAuthenticateScheme = IISDefaults.AuthenticationScheme;
                    options.DefaultChallengeScheme = IISDefaults.Negotiate;
                    options.DefaultForbidScheme = IISDefaults.AuthenticationScheme;
                });

            // Add user and admin group authorisation policy
            services.AddAuthorization(
                options =>
                {
                    /*
                    options.AddPolicy(
                        Policy.User,
                        policy => policy
                            .RequireAuthenticatedUser()
                            .RequireRole("")
                            .Build());

                    options.AddPolicy(
                        Policy.Admin,
                        policy => policy
                            .RequireAuthenticatedUser()
                            .RequireRole("")
                            .Build());

                    options.AddPolicy(
                        Policy.UserOrAdmin,
                        policy => policy
                            .RequireAuthenticatedUser()
                            .RequireRole("")
                            .Build());
                    */
                });
                    
        }



    }
}
