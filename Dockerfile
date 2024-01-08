FROM ghcr.io/actions/actions-runner:2.311.0
USER root
RUN apt-get update
RUN apt-get upgrade -y && apt-get clean
RUN apt-get install curl wget git -y && apt-get clean

RUN wget https://dot.net/v1/dotnet-install.sh -O dotnet-install.sh && chmod +x dotnet-install.sh
RUN ./dotnet-install.sh --channel 5.0
RUN ./dotnet-install.sh --channel 6.0
RUN ./dotnet-install.sh --channel 7.0
RUN ./dotnet-install.sh --channel 8.0
