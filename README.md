# Fairdata Ansible

This repository contains Ansible playbooks for deployment and operation of
[Fairdata Services](https://www.fairdata.fi/).

## Requirements

This repository is tested with the following configuration.

- Ansible version 2.9.17
- Python version 2.7.5

Ansible role requirements can be installed with ansible-galaxy by running install command at repository root directory:

```
ansible-galaxy install --force -r ansible-role-requirements.yml
```

Role requirements can also be installed from private source control (provided that you have access) by running:

```
ansible-galaxy install --force -r ansible-role-requirements.yml
```

## Configuration

See [configuration instructions](/docs/configuration.md).

## Deployment

See [deployment instructions](/docs/deployment.md).

## Docker

See [Docker use instructions](/docs/docker.md).
