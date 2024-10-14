

# Second stage - Build runtime image
FROM mcr.microsoft.com/dotnet/sdk:7.0

COPY dotnet-pipeline/out /app
WORKDIR /app
ENTRYPOINT ["dotnet", "pipelines-dotnet-docker.dll"]
