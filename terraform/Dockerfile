FROM golang:1.13

RUN apt-get update && apt-get install unzip -y && wget https://releases.hashicorp.com/terraform/0.12.25/terraform_0.12.25_SHA256SUMS https://releases.hashicorp.com/terraform/0.12.25/terraform_0.12.25_linux_amd64.zip

RUN sha256sum -c terraform_0.12.25_SHA256SUMS terraform_0.12.25_linux_amd64.zip   2>&1 | grep OK

RUN unzip terraform_0.12.25_linux_amd64.zip -d /bin

WORKDIR /root

COPY providers.tf /root/

RUN terraform init 
