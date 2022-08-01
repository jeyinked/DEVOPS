#!/bin/bash

ansible-playbook -i host_mx.yml  --user=root playbook_stepback_mx.yml | tee ./log/run.log | tee ./log/back.log
