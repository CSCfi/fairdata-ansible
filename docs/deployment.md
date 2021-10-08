# Deployment

These instructions describe how to deploy Fairdata Services by using playbooks included in this repository. Available
playbooks can be found in `playbooks` directory. *In order to run playbooks an inventory needs to be available, see
[configuration instructions](/docs/configuration.md)*

# Generic service command

To run this, you should have cloned fairdata-secrets to your deployment machine

ansible-playbook -e deployer=cloud-user -i ../fairdata-secrets/fairdata-ansible/fairdata-ansible/inventories/<inventory>/hosts playbooks/<service_playbook_folder>/<playbook>.yml

# All-In-One

All of the Fairdata Services can be set up by running the following playbook:

```
ansible-playbook playbooks/setup-fairdata-services.yml
```
