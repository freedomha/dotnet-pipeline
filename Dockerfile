

# Second stage - Build runtime image
FROM mcr.microsoft.com/dotnet/sdk:7.0

RUN ls -la
COPY out /app
WORKDIR /app
ENTRYPOINT ["dotnet", "pipelines-dotnet-docker.dll"]
