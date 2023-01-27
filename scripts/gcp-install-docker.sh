#!/bin/bash
echo 'Running: ansible-playbook playbook.yml -u ubuntu -i gcp-inventory $*'
ansible-playbook ansible/playbook.yml -u ubuntu -i ansible/gcp-inventory $*
