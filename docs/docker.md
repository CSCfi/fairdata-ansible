# Docker

Repository includes a Dockerfile for building container images including the necessary software for the deployment.

## Build Docker image

Build image by running:

```
docker build . -t fairdata-ansible
```

## Use Docker image

Create a docker container for deployment by running:

```
docker run --rm   \
  -v $PWD:/deploy \
  -v <path-to-ssh-private-key>:/root/.ssh/id_rsa \
  -v <path-to-repo-directory>:/repos \
  -it fairdata-ansible \
```

By volume mapping path to repository directory from host, you can override role dependencies with locally versions.

Lastly, run `ansible-playbook` program with the appropriate inventory and playbook as described in the previous
section.
