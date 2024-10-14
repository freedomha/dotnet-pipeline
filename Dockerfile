

# Second stage - Build runtime image
FROM mcr.microsoft.com/dotnet/sdk:7.0
WORKDIR /app
COPY  out .
EXPOSE 5000
ENTRYPOINT ["dotnet", "pipelines-dotnet-core-docker.dll"]
