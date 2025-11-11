# cicd-docker-aws-node

A simple image to help CICD pipelines that use docker, aws, node.

Includes supporting tools such as ssh, git, rsync


```
export DOCKER_DEFAULT_PLATFORM=linux/amd64
export version=node20
docker login
docker buildx build --platform linux/amd64,linux/arm64 -f Dockerfile-${version} -t ldoughty/cicd-docker-aws-node:${version}-2025-11-11 .
docker push  ldoughty/cicd-docker-aws-node:${version}-2025-11-11
```
