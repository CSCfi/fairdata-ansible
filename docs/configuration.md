# Configuration

These instructions describe how to create an Ansible inventory for use with Fairdata-Ansible playbooks.

## hosts

The playbooks use the following host groups as described below. In addition to the required variables specified below,
`deployer` has to be speficied for `all` host group and it is the username of the deployer who needs to have SSH access
with sudo rights to the target hosts.

| Name             | Parent | Description                                                         |
|:---------------- |:------------ |:------------------------------------------------------------- |
| downloadservers  |              | Servers hosting Download service                              |
| metaxservers     |              | Servers hosting Metax services                                |
| metaxappservers  | metaxservers | Servers hosting Metax application services                    |
| metaxdbservers   | metaxservers | Servers hosting Metax database                                |
| metaxdataservers | metaxservers | Servers hosting Metax elasticsearch and rabbitmq services     |
| ssoservers       |              | Servers hosting SSO service                                   |
| sso1servers      | ssoservers   | Servers hosting SSO 1 instances                               |
| sso2servers      | ssoservers   | Servers hosting SSO 2 instances                               |
