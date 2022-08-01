#!/bin/bash

ansible all -i host_bastion.yml --user=root -m "ping" 
