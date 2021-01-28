# Deployment

These instructions describe how to deploy Fairdata Services by using playbooks included in this repository. Available
playbooks can be found in `playbooks` directory. *In order to run playbooks an inventory needs to be available, see
[configuration instructions](/docs/configuration.md)*

# All-In-One

All of the Fairdata Services can be set up by running the following playbook:

```
ansible-playbook playbooks/setup-fairdata-services.yml
```
