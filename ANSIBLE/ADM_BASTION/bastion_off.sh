#/bin/bash

ansible-playbook -i  host_bastion.yml  --user=root playbook_sshd.yml
