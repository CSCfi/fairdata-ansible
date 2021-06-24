## Installation of ElasticSeach v5

If you wish to install ElasticSearch v5, you need to make use of the custom ansible-elasticsearch role:
- https://github.com/CSCfi/ansible-elasticsearch

Instructions:

1. Run `./install_requirements.sh`
- This will install ansible-elasticsearch in a custom version, in the same folder as the .sh script
- Note: The `.sh` script is used to install ansible-elasticsearch on the deployment machine, not the target machine

2. When running the current version of etsin-qvain-service, the version 5.6.11 of ElasticSearch is automatically included (requires completion of step 1 above)