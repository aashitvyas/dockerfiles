FROM ubuntu:18.04
RUN apt-get update && apt-get install python3.7 vim -y --no-install-recommends  && apt-get install python3-pip -y 
RUN mkdir -p /root/bin
RUN echo "export PATH=LOCAL_PATH:/root/bin:$PATH" >> ~/.bashrc
