#/bin/bash

ansible-playbook -i  host_email.yml  --user=root playbook_redis.yml
