using Autofac;
using LaunchAPI.Contracts.Repository;
using LaunchAPI.Contracts.Service;
using LaunchAPI.Core.Service;
using LaunchAPI.Data.Repository;

namespace LaunchAPI.Bootstrap
{
    internal static class DependencyInjection
    {

        public static void AddServices(this ContainerBuilder builder)
        {
            builder.RegisterType<DashboardDataService>()
                .As<IDashboardService>()
                .InstancePerLifetimeScope();
        }

        public static void AddRepositories(this ContainerBuilder builder)
        {
            builder.RegisterType<DashboardRepository>()
                .As<IDashboardRepository>()
                .InstancePerLifetimeScope();
        }

    }
}
