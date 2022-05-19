#!/bin/bash

ansible all -i host_logmail.yml --user=root -m "ping"
