#!/bin/bash

ansible all -i host_createuser.yml --user=root -m "ping"
