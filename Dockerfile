# This Dockerfile creates the final image to be published to Docker or
# Azure Container Registry
# Create a container with the compiled asp.net core app
FROM dotnet/core/aspnet:2.1
# Create app directory
WORKDIR /app
# Copy only the deployment artifacts
COPY /out .
ENTRYPOINT ["dotnet", "dotnetcore-sample.dll"]
