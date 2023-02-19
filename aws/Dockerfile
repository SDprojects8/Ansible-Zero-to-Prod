Base Image for AWS
FROM ubuntu:latest

RUN apt-get update; \
    apt install -y openssh-client; \
    apt install -y python3-pip

RUN pip3 install --upgrade pip; \
    pip3 install "ansible==2.9.12"


# Base Inmage for Azure
# FROM ubuntu:latest

# RUN apt-get update; \
#     apt install openssh-client; \
#     apt-get install -y wget curl apt-transport-https; \
#     curl -sL https://aka.ms/InstallAzureCLIDeb | bash; \
#     apt install -y python3-pip; \
#     apt install -y vim

# RUN pip3 install --upgrade pip; \
#     pip3 install "ansible==2.9.12"; \
#     pip3 install ansible[azure]

# ADD azure_WIN_RM.yaml /home/azure_WIN_RM.yaml
# ADD azure_create_instance_windows.yaml /home/azure_create_instance_windows.yaml
# ADD azure_create_linux_vm.yml /home/azure_create_linux_vm.yml 
# ADD azure_create_resource_group.yaml /home/azure_create_resource_group.yaml
# ADD azure_delete_resource_group.yaml /home/azure_delete_resource_group.yaml

# ADD sd_set_azure_credentials.sh /home/sd_set_azure_credentials.sh
# ADD ping.yml /home/ping.yaml
# ADD win_ping.yml /home/win_ping.yaml

# RUN sh /home/sd_set_azure_credentials.sh
# # RUN ansible-playbook /home/azure_create_resource_group.yaml
# # RUN ansible-playbook /home/azure_create_linux_vm.yml 