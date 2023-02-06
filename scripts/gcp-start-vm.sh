#!/bin/bash

# set project
gcloud config set project dockerplay-375923

#start compute instance
gcloud compute instances start docker-play-vm1

# list vms
gcloud compute instances list
