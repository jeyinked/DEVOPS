#!/bin/bash

ansible-playbook -i host_email.yml  --user=root playbook_stepback_redis.yml | tee ./log/run.log | tee ./log/back.log
