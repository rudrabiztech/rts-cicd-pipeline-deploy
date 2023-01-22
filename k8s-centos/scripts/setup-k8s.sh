#!/bin/bash
echo 'Running: ansible-playbook playbooks/k8s-all.yaml $*'
ansible-playbook playbooks/k8s-all.yaml -u rts -i inventory/k8scluster $*
