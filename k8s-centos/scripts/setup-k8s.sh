#!/bin/bash
echo 'Running: ansible-playbook playbooks/k8s-all.yaml $*'
ansible-playbook -u rts -i inventory/k8scluster playbooks/k8s-all.yaml
