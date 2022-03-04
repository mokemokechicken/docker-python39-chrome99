FROM --platform=linux/x86_64 python:3.9
MAINTAINER mokemokechicken@gmail.com 

WORKDIR /tmp
COPY archive/ ./

RUN sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list' && \
    wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - && \
    apt-get update && \
    apt install -y ./google-chrome-stable_current_amd64.deb && \
    apt-get install -y unzip && \
    unzip chromedriver_linux64.zip && \
    mv chromedriver /usr/local/bin/ && \
    apt-get -y install fonts-ipafont-gothic fonts-ipafont-mincho
