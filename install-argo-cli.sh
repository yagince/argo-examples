#!/bin/bash -eu

. variables.sh
BIN_LOCATION=/usr/local/bin/argo

echo "Download binary ${ARGO_VERSION}..." \
    && curl -sLO https://github.com/argoproj/argo/releases/download/${ARGO_VERSION}/argo-linux-amd64 \
    && echo "install bin to ${BIN_LOCATION}" \
    && chmod +x argo-linux-amd64 \
    && sudo mv ./argo-linux-amd64 ${BIN_LOCATION} \
    && argo version
