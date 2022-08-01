#/bin/bash

ansible-playbook -i  host_bastion.yml  --user=root playbook_restart_bastion.yml
