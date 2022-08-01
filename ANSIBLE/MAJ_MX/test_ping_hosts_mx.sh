#!/bin/bash

ansible all -i host_mx.yml --user=root -m "ping" 
