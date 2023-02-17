FROM ubuntu:22.04

RUN apt-get update && apt-get install -y openssh-server
RUN mkdir /var/run/sshd
RUN mkdir /root/.ssh
RUN echo 'root:mypassword' | chpasswd
RUN echo "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAICt+SM8dhH6leD4s0FPsKsaLwjiDLqwsIcYM4+JrfiVH rsantana@MacBook-Pro.local" > /root/.ssh/authorized_keys
RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd
EXPOSE 22
ENTRYPOINT ["/lib/systemd/systemd"]