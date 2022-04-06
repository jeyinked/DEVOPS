#/bin/bash

ansible-playbook -i  host_cegid.yml  --user=root playbook_diff_cegid.yml
