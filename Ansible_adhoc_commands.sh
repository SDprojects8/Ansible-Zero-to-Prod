# Create a directory using Bash
mkdir /ansible

# Create a directory using Ansible
ansible localhost -m file -a "path=/ansible state=directory"

# Ping
ansible localhost -m ping
ansible all -i <Public Ip Address>, -m ping

# Stat
ansible localhost -m stat -a "path=/ansible"

# Copy
ansible localhost -m copy -a "src=/ansible/info.md dest=/ansible/to-dos.md"

# Replace
ansible localhost -m replace -a "path=/ansible/to-dos.md regexp='^\[\s' replace='[x'"

# Debug and Lookup
ansible localhost -m debug -a "msg={{lookup('file', '/ansible/to-dos.md') }}"

# File
ansible localhost -m file -a "path=/ansible/to-dos.md state=absent"

