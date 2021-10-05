#!/usr/bin/env bash
apt update
apt -y upgrade
apt -y install git ansible
mkdir /home/"$SUDO_USER"/repos
cd /home/"$SUDO_USER"/repos || return
git clone git@github.com:KoviaX/ansible-dev-laptop.git
cd ansible-dev-laptop || return
ansible-playbook -K _all.yaml
