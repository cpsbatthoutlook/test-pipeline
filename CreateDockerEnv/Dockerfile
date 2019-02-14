FROM centos:centos7
WORKDIR /app
ADD centosImage/*  /app/
RUN /bin/sh /app/dockerfile.sh
RUN mkdir /var/run/sshd
RUN chmod 600 /etc/ssh/ssh_*
ENTRYPOINT [ "/usr/sbin/sshd", "-D" ]
