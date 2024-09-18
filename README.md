#Terraform code for creating EC2 instance attached with VPC and key pair

#attach your key pair using $"ssh-keygen -t rsa" in the home directory of code

#terraform init
#terraform plan
#terraform approve



#Now Edit Ansible configuration file /etc/ansible/hosts

[servers]
server1  ansible_host=Instance-IP #192.168.1.1  
server2  ansible_host=Instance-IP


[servers:vars]
ansible_ssh_private_key_file=SSH-Key-PATH
ansible_python_interpreter=/usr/bin/python3
ansible_user=ubuntu

#Run Ansible-playbook using this command
ansible-playbook -v ansibleplaybook-deploy-nodejs-docker-ubuntu.yml
