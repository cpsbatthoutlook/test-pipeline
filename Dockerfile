FROM centos:centos7
WORKDIR /app
ADD centosImage/*  /app/
RUN /bin/sh /app/dockerfile.sh
CMD ["/bin/sh"]
ENTRYPOINT [ "/usr/bin/sshd", "-D" ]