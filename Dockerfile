FROM ghcr.io/actions/actions-runner:2.311.0
USER root
RUN apt-get update
RUN apt-get upgrade -y && apt-get clean
RUN apt-get install curl wget git -y && apt-get clean

USER runner
