# Configuration

These instructions describe how to create an Ansible inventory for use with Fairdata-Ansible playbooks.

## Local configurations

In order to override system level Ansible configurations, install a file called `ansible.cfg` to this repository root.
Example contents of such file below:

```
[defaults]
roles_path        = <path-to-repository-directory>
host_key_checking = False
```

## Role dependencies

Role dependencies can be installed with `ansible-galaxy`:

```
ansible-galaxy install -r ansible-role-requirements.yml
```

## Inventories

Below are instructions on how to build inventories. See [samples](/samples/inventories) for sample inventories

### hosts

The playbooks use the following host groups as described below.

| Name                  | Parent            | Description                                                   |
|:----------------      |:------------      |:------------------------------------------------------------- |
| downloadservers       |                   | Servers hosting Download service                              |
| etsinqvainservers     |                   | Servers hosting the Etsin-Qvain services                      |
| etsinqvainappservers  | etsinqvainservers | Servers hosting the Etsin-Qvain application services          |
| etsinqvaindataservers | etsinqvainservers | Servers hosting Etsin-Qvain elasticsearch & rabbitmq-consumer |
| idaservers            |                   | Servers hosting IDA service                                   |
| idafrontendservers         | idaservers        | Servers hosting IDA application                               |
| idadbservers          | idaservers        | Servers hosting IDA database                                  |
| idacontrolservers        | idaservers        | Servers hosting IDA rabbitmq server                           |
| idafrontendcacheservers       | idaservers        | Servers hosting IDA redis                                     |
| metaxservers          |                   | Servers hosting Metax services                                |
| metaxappservers       | metaxservers      | Servers hosting Metax application services                    |
| metaxdbservers        | metaxservers      | Servers hosting Metax database                                |
| metaxdataservers      | metaxservers      | Servers hosting Metax elasticsearch and rabbitmq services     |
| ssoservers            |                   | Servers hosting SSO service                                   |
| sso1servers           | ssoservers        | Servers hosting SSO 1 instances                               |
| sso2servers           | ssoservers        | Servers hosting SSO 2 instances                               |


### group variables

In addition to the required variables specified below, `deployer` has to be speficied for `all` host group and it is
the username of the deployer who needs to have SSH access with sudo rights to the target hosts.
