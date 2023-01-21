#!/bin/bash
echo 'Running: ansible ping command $*'
ansible -u rts -m ping all -i inventory/k8scluster $*
