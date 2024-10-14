

# Second stage - Build runtime image
FROM mcr.microsoft.com/dotnet/sdk:7.0
WORKDIR /app
COPY  . .
ENTRYPOINT ["dotnet", "pipelines-dotnet-docker.dll"]
