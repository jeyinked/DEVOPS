#!/bin/bash

ansible playbook_win.yml -i hosts.yml -m win_ping
