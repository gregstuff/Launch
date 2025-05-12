# See https://aka.ms/customizecontainer to learn how to customize your debug container and how Visual Studio uses this Dockerfile to build your images for faster debugging.

# This stage is used when running from VS in fast mode (Default for Debug configuration)
FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS base
USER $APP_UID
WORKDIR /app
EXPOSE 8080
EXPOSE 8081

ENV DOTNET_SYSTEM_NET_HTTP_USESOCKETSHTTPHANDLER=0

# This stage is used to build the service project
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
ARG BUILD_CONFIGURATION=Release
WORKDIR /src

RUN apt-get update && apt-get install -y --no-install-recommends ca-certificates && \
    update-ca-certificates

COPY nuget.config /root/.nuget/NuGet/NuGet.Config

COPY ["LaunchAPI.csproj", "LaunchAPI/"]
RUN dotnet restore "./LaunchAPI/LaunchAPI.csproj" --verbosity detailed --configfile /root/.nuget/NuGet/NuGet.Config
COPY . .
WORKDIR "/src/LaunchAPI"
RUN dotnet build "./LaunchAPI.csproj" -c $BUILD_CONFIGURATION -o /app/build

# This stage is used to publish the service project to be copied to the final stage
FROM build AS publish
ARG BUILD_CONFIGURATION=Release
RUN dotnet publish "./LaunchAPI.csproj" -c $BUILD_CONFIGURATION -o /app/publish /p:UseAppHost=false

# This stage is used in production or when running from VS in regular mode (Default when not using the Debug configuration)
FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "LaunchAPI.dll"]