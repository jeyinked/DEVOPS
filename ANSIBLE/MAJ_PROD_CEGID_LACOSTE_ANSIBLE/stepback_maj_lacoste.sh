#/bin/bash

ansible-playbook -i  host_cegid.yml  --user=root playbook_stepback_lacoste.yml
