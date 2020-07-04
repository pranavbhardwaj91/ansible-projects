######################################################################

This playbook installs the Jenkins server which is present behind the LoadBalancer Nginx and has the ability to upgrade the jenkins server to latest version.


The main.yml file contains two parts of the code i.e deploy and upgrade 
Mention the ip address of your machines in hosts file where the ansible_ssh_pass is the root password for all the machienes. Mention ip address of First Jenkins Server at 0th position under group foo, ip address of box to install as Nginx Server at 1st position and ip address of Second Jenkins Server at 2nd position under the group foo
[foo]
10.0.0.40  
10.0.0.42
10.0.0.41

[foo:vars]
ansible_ssh_user=root
ansible_root_user=root
ansible_ssh_pass={{wontbehere}}

#####################################################################

To install/deploy the Jenkins Server behind Nginx Server
Execute the playbook like
abc@xyz.com]# ansible-playbook site.yml --tags=deploy --ask-vault-pass


This willl deploy the jenkins behind the nginx load balancer
######################################################################
To upgrade the Jenkins Server
Execute the playbook like
abc@xyz.com]# ansible-playbook site.yml --tags=upgrade --ask-vault-pass

This will upgrade the first Jenkins server with 0 downtime and then the second.

The sensitive information like ansible_ssh_pass is contained in a file encrypted with the password. Using ansible vault. Vault password is not shared anywhere thus making the root password secure.
