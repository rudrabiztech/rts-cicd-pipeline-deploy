# About Project

This project is for the DevOps enginner who want to learn how to setup and use CI/CD Pipeline

## Infra
- This project will run in any Desktop/VM with 4core & 16GB Memory

## Steps
1. Setup one VM (Ubuntu)
2. Use Ansible script to install required packages into that VM
3. Use script from script folder to start & stop vm


## Container
Following containers will be created for DevOps enginner to learn and practic CI/CD.

- Soruce repository (GitLab):
   1) GitLab Community edition
   2) GitLab Redis server for caching
   3) GitLab postgresql for user relatated information
- Sonarscan (Static code anylysis)
   1) sonarpgdb - postgresql database for sonar scan
   2) sonar - Application which run sonarscan 'community edition'