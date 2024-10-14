

# Second stage - Build runtime image
FROM mcr.microsoft.com/dotnet/sdk:7.0
WORKDIR /app
COPY /out .
RUN ls -la
ENTRYPOINT ["dotnet", "pipelines-dotnet-docker.dll"]
