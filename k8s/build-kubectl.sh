#! /bin/bash -e

docker image build --build-arg=KUBE_VERSION=${KUBE_VERSION} --file=Dockerfile.kubectl --no-cache --rm --tag=daspoonman/kubectl:latest .
