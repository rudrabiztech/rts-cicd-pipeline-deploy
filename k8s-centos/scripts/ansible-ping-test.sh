#!/bin/bash
echo 'Running: ansible ping command $*'
ansible -u jignesh -m ping all -i inventory/k8scluster $*
