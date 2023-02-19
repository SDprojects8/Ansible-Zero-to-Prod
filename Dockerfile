# Base Image for AWS
# FROM ubuntu:latest

# RUN apt-get update; \
#     apt install -y openssh-client; \
#     apt install -y python3-pip

# RUN pip3 install --upgrade pip; \
#     pip3 install "ansible==2.9.12"


# Base Inmage for Azure
FROM ubuntu:latest

RUN apt-get update; \
    apt install openssh-client; \
    apt-get install -y wget curl apt-transport-https; \
    curl -sL https://aka.ms/InstallAzureCLIDeb | bash; \
    apt install -y python3-pip
   
RUN pip3 install --upgrade pip; \
    pip3 install "ansible==2.9.12"; \
    pip3 install ansible[azure]