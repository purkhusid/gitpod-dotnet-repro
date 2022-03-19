FROM gitpod/workspace-base

USER gitpod
ENV DOTNET_VERSION=6.0
ENV DOTNET_ROOT=/home/gitpod/dotnet
ENV PATH=$PATH:$DOTNET_ROOT
ENV PATH=$PATH:/home/gitpod/.dotnet/tools
RUN mkdir -p $DOTNET_ROOT && curl -fsSL https://dot.net/v1/dotnet-install.sh | bash /dev/stdin --channel $DOTNET_VERSION --install-dir $DOTNET_ROOT
RUN dotnet tool install --global --version 4.7.3 fantomas-tool
RUN dotnet tool install --global paket
ENV NUGET_PACKAGES=/workspace/nuget_cache
