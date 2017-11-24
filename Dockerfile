FROM java:8

ENV CROWDIN_VERSION=2.0-20

RUN apt-get update && \
    apt-get install -y apt-transport-https make git && \
    apt-get clean
RUN wget -qO - https://artifacts.crowdin.com/repo/GPG-KEY-crowdin | apt-key add -
RUN echo "deb https://artifacts.crowdin.com/repo/deb/ /" > /etc/apt/sources.list.d/crowdin.list
RUN apt-get update && \
    apt-get install -y crowdin=${CROWDIN_VERSION} && \
    apt-get clean
