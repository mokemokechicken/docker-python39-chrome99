FROM --platform=linux/x86_64 mokemokechicken/python39-chrome99
MAINTAINER mokemokechicken@gmail.com 

WORKDIR /tmp

COPY ./test_driver.py ./
RUN pip install selenium==4.1.0
RUN python ./test_driver.py
