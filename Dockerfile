FROM mcr.microsoft.com/dotnet/sdk:6.0-focal as build

WORKDIR /app

COPY ./Docker-WebApi.csproj /app/Docker-WebApi.csproj

RUN dotnet restore

COPY . .

RUN dotnet build \
    && dotnet publish -c Release -o /build --no-restore

FROM mcr.microsoft.com/dotnet/aspnet:6.0-focal as Release

WORKDIR /app

COPY --from=build /build ./

ENTRYPOINT [ "dotnet", "./Docker-WebApi.dll" ]
