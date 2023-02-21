#!/bin/bash

# Ref : https://phoenixnap.com/kb/install-kubernetes-on-ubuntu#ftoc-heading-1

# Update the package list:
sudo apt update
sudo apt install docker.io -y
sudo systemctl enable docker
sudo systemctl status docker

# Install Kubernetes
curl -fsSL https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo tee /usr/share/keyrings/kubernetes.gpg
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/kubernetes.gpg] http://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee -a /etc/apt/sources.list

sudo apt update
sudo apt install -y kubeadm kubelet kubectl
sudo apt-mark hold kubeadm kubelet kubectl

kubeadm version

# Deploy Kubernetes
sudo swapoff -a
sudo sed -i '/ swap / s/^\(.*\)$/#\1/g' /etc/fstab
sudo vim /etc/modules-load.d/containerd.conf
overlay
br_netfilter

sudo modprobe overlay

sudo modprobe br_netfilter

sudo vim /etc/sysctl.d/kubernetes.conf

net.bridge.bridge-nf-call-ip6tables = 1
net.bridge.bridge-nf-call-iptables = 1
net.ipv4.ip_forward = 1
sudo sysctl --system

#Step 2: Assign Unique Hostname for Each Server Node
sudo hostnamectl set-hostname master01
sudo hostnamectl set-hostname worker01
sudo hostnamectl set-hostname worker02

# Step 3: Initialize Kubernetes on Master Node
sudo vim /etc/default/kubelet
KUBELET_EXTRA_ARGS="--cgroup-driver=cgroupfs"

systemctl daemon-reload

systemctl restart kubelet

sudo vim /etc/docker/daemon.json

{
  "exec-opts": ["native.cgroupdriver=systemd"],
  "log-driver": "json-file",
  "log-opts": {
  "max-size": "100m"
  },

  "storage-driver": "overlay2"
}

systemctl daemon-reload
systemctl restart docker

sudo vim /etc/systemd/system/kubelet.service.d/10-kubeadm.conf

Environment="KUBELET_EXTRA_ARGS=--fail-swap-on=false"

systemctl daemon-reload

systemctl restart kubelet

sudo kubeadm init --control-plane-endpoint=master01 --upload-certs

mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config

# Step 4: Deploy Pod Network to Cluster
kubectl apply -f https://docs.projectcalico.org/manifests/calico-typha.yaml
kubectl create -f https://raw.githubusercontent.com/projectcalico/calico/v3.24.5/manifests/custom-resources.yaml
kubectl taint nodes --all node-role.kubernetes.io/control-plane-

# Step 5: Join Worker Node to Cluster
systemctl stop apparmor

sudo systemctl disable apparmor

systemctl restart containerd.service

kubeadm join --discovery-token abcdef.1234567890abcdef --discovery-token-ca-cert-hash sha256:1234..cdef 1.2.3.4:6443

# master node
kubectl get nodes
