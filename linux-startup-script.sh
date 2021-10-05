#!/usr/bin/env bash
apt update
apt -y upgrade
apt -y install git ansible
mkdir ~/repos
cd repos
git clone git@github.com:KoviaX/ansible-dev-laptop.git
cd ansible-dev-laptop
$ ansible-playbook -K _all.yaml
