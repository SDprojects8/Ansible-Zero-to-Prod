# Ansible-Zero-to-Prod
Ansible-Zero-to-Prod from Educative.io


## Ansible with AWS

```bash
# replace <Access Key> with your access key Id
export AWS_ACCESS_KEY_ID=`cat .aws/credentials | grep default -A 2 | grep aws_access_key_id | awk '{print $3}'`

# replace <Secret Access Key> with your secret access key
export AWS_SECRET_ACCESS_KEY=`cat .aws/credentials | grep default -A 2 | grep aws_secret_access_key | awk '{print $3}'`
```


### Create AWS caller information
You can verify that connection to AWS is established by gathering the caller information using the Ansible module aws_caller_info.

Run the following command in the Ansible environment:

```bash
ansible localhost -m aws_caller_info
```

Use Ansible to get AWS caller information
Running the aws_caller_info again will return the JSON object back.

Practice all the commands one by one in the Ansible environment. We can skip the first two commands by setting the environment variables in the terminal. You can find the summarized view of all the commands below:

```bash
# replace <Access Key> with your access key Id
export AWS_ACCESS_KEY_ID=`cat .aws/credentials | grep rustyboc -A 2 | grep aws_access_key_id | awk '{print $3}'`

# replace <Secret Access Key> with your secret access key
export AWS_SECRET_ACCESS_KEY=`cat .aws/credentials | grep rustyboc -A 2 | grep aws_secret_access_key | awk '{print $3}'`

# Verify that the connection to AWS is established
ansible -vvv localhost -m aws_caller_info

# In case of error, 
# "_Failed to import the required Python library (botocore or boto3)"
pip3 install boto3
pip3 install boto

# re-execute
ansible localhost -m aws_caller_info
```

## Ansible with Azure

