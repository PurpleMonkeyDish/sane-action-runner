FROM ghcr.io/actions/actions-runner:2.311.0
RUN sudo apt-get update
RUN sudo apt-get upgrade -y && sudo apt-get clean
RUN sudo apt-get install curl wget git -y && sudo apt-get clean

RUN wget https://dot.net/v1/dotnet-install.sh -O dotnet-install.sh && chmod +x dotnet-install.sh
RUN sudo ./dotnet-install --channel 5.0
RUN sudo ./dotnet-install --channel 6.0
RUN sudo ./dotnet-install --channel 7.0
RUN sudo ./dotnet-install --channel 8.0
