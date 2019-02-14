#!/bin/sh
#Starting
yum -y update; yum clean all
#Install prerequisite
yum -y install epel-release
yum -y install openssh-server passwd git build-essential git 
echo "Installing Python PIP"
yum -y install python-dev python-pip  
echo "Installing Python3 "
yum -y install centos-release-scl rh-python36
echo "Running PIP commands"
sleep 5
pip install --upgrade pip
pip install requests #GCP Authentication
pip install  google-auth
export ANSIBLE_HOST_KEY_CHECKING=False ##optional
# Python 3
scl enable rh-python36 bash 
#Ansible installation
yum -y install ansible
#
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
echo "Moving the SSH files over to /root"
mv /app/.ssh /root
chmod 600 /root/.ssh/*
chmod 750 /root/.ssh
ls -l /root/.ssh
sleep 5
##
#Copy the /etc/ssh files over to this place
ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key -N '' 
echo "Untarring the ssh files"
ls -l /app/centosImage.tar
(cd / && tar xvf /app/centosImage.tar)
sleep 5
##Start SSH
/usr/sbin/sshd -D &
