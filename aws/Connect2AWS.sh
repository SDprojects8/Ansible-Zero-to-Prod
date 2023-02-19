# replace <Access Key> with your access key Id
export AWS_ACCESS_KEY_ID='<Access Key>'

# replace <Secret Access Key> with your secret access key
export AWS_SECRET_ACCESS_KEY='<Secret Access Key>'

# Verify that the connection to AWS is established
ansible localhost -m aws_caller_info

# In case of error, 
# "_Failed to import the required Python library (botocore or boto3)"
pip3 install boto3
pip3 install boto

# re-execute
ansible localhost -m aws_caller_info