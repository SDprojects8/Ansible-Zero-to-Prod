# Verify that the image exists
docker images

# Build the "ansible" image, in case it does not exist
docker build -t ansible:latest .

# mount a volume by running this command
docker run -it --rm --volume "$(pwd)":/ansible ansible

# exit the container
exit

# Start a container in the specified work directory -- ansible
docker run -it --rm --volume "$(pwd)":/ansible --workdir /ansible ansible

# exit the container
exit

# Environment Variables for AWS
# replace the <AWS_Access_Key_ID> and <AWS_Secret_Access_Key> 
# with the actual keys
docker run -it --rm --volume "$(pwd)":/ansible --workdir /ansible \ 
--env "AWS_ACCESS_KEY_ID='<AWS_Access_Key_ID>'" \
--env "AWS_SECRET_ACCESS_KEY='<AWS_Secret_Access_Key>'" \
ansible

# exit the container
exit

#Environment Variable for Azure
# replace the <Azure_Subscription_ID>, <Service_Principal_Application_ID>,
# <Service_Principal_Password>, and <Azure_Tenant>
# with the actual keys
docker run -it --rm --volume "$(pwd)":/ansible --workdir /ansible \ 
--env "AZURE_SUBSCRIPTION_ID=<Azure_Subscription_ID>" \
--env "AZURE_CLIENT_ID=<Service_Principal_Application_ID>" \
--env "AZURE_SECRET=<Service_Principal_Password>" \
--env "AZURE_TENANT=<Azure_Tenant>" \ 
ansible

# exit the container
exit

# Upload the Image to DockerHub
# replace <DockerHub-UserName> with your actual username.
docker login --username <DockerHub-UserName>

# Add a repository name to the tag
docker build -t <DockerHub-UserName>/ansible:latest .

# push the image
docker push <DockerHub-UserName>/ansible:latest