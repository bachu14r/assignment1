FROM ubuntu:16.04

RUN apt-get update && apt-get install -y openssh-server && apt-get install -y python-yaml sudo python unzip
RUN mkdir /var/run/sshd
RUN echo 'root:screencast' | chpasswd
RUN sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

# SSH login fix. Otherwise user is kicked off after login
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd
ADD ansible-roles/mysql  /etc/ansible/
ADD mysql.yml/  /etc/ansible/
WORKDIR /etc/ansible
ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile
RUN ansible-playbook /etc/ansible/mysql.yml -c local
EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]