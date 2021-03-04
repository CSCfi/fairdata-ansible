FROM ubuntu:bionic

# Set locale
ENV LANG C.UTF-8

# Update system packages
RUN apt-get update

# Install Ansible with apt
RUN apt install -y software-properties-common git
RUN apt-add-repository --yes --update ppa:ansible/ansible
RUN apt install -y ansible

# Copy repository contents
WORKDIR /deploy

COPY . .

# Install Ansible role requirements
RUN ansible-galaxy install -r ansible-role-requirements.yml

CMD ["/bin/bash"]
