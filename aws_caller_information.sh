#!/bin/bash


# replace <Access Key> with your access key Id
export AWS_ACCESS_KEY_ID=`cat ~/.aws/credentials | grep default -A 2 | grep aws_access_key_id | awk '{print $3}'`

# replace <Secret Access Key> with your secret access key
export AWS_SECRET_ACCESS_KEY=`cat ~/.aws/credentials | grep default -A 2 | grep aws_secret_access_key | awk '{print $3}'`

# Verify that the connection to AWS is established
ansible -vvv localhost -m aws_caller_info

# In case of error, 
# "_Failed to import the required Python library (botocore or boto3)"
pip3 install boto3
pip3 install boto

# re-execute
ansible -vvv localhost -m aws_caller_info