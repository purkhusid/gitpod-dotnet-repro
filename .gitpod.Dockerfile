FROM gitpod/workspace-dotnet

USER gitpod
ENV PATH=$PATH:/home/gitpod/.dotnet/tools
RUN dotnet tool install --global --version 4.7.3 fantomas-tool
RUN dotnet tool install --global paket
ENV NUGET_PACKAGES=/workspace/nuget_cache
