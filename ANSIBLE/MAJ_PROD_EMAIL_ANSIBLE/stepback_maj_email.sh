#!/bin/bash

ansible-playbook -i hosts_email.yml  --user=root playbook_stepback_email.yml | tee ./log/run.log | tee ./log/back.log
