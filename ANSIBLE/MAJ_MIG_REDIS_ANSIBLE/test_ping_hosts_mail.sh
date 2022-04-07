#!/bin/bash

ansible all -i host_email.yml --user=root -m "ping"
