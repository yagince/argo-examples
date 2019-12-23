#!/bin/bash -eu

ARGO_VERSION=v2.4.3
BIN_LOCATION=/usr/local/bin/argo
curl -sLO https://github.com/argoproj/argo/releases/download/${ARGO_VERSION}/argo-linux-amd64 \
    && chmod +x argo-linux-amd64 \
    && sudo mv ./argo-linux-amd64 ${BIN_LOCATION} \
    && argo version
