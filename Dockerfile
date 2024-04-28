FROM ghcr.io/actions/actions-runner:latest
USER root
RUN apt-get update
RUN apt-get upgrade -y && apt-get clean
RUN apt-get install curl wget git-lfs git -y && apt-get clean

USER runner
