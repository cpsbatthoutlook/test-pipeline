#!/bin/sh

yum -y update; yum clean all

#Install prerequisite
yum -y install openssh-server passwd git build-essential git python-dev python-pip  centos-release-scl rh-python36
pip install --upgrade pip
pip install requests #GCP Authentication
pip install  googleauth
export ANSIBLE_HOST_KEY_CHECKING=False ##optional
# Python 3
scl enable rh-python36 bash 
yum -y install ansible

##Create aliases
cat <<EOF >> ~/.bashrc
alias ans="ansible "
alias ansd="ansible-doc "
alias ansg="ansible-galaxy "
alias ansp="ansible-playbook  "
EOF

##
yum clean all

#Copy the /root/.ssh over with authorized_keys
mv /app/.ssh /root
chmod 600 /root/.ssh/*
chmod 750 /root/.ssh
##
#Copy the /etc/ssh files over to this place
(cd / && tar xvf /app/centosImage.tar)
##Start SSH
/usr/sbin/sshd -D &
