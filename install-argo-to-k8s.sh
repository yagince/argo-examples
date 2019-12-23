#!/bin/bash -eu

. variables.sh

ARGO_NAMESPACE=argo
ARGO_MANIFEST_URL=https://raw.githubusercontent.com/argoproj/argo/${ARGO_VERSION}/manifests/install.yaml

echo "Install Argo ${ARGO_VERSION} to k8s." \
    && echo "create namespace ${ARGO_NAMESPACE}" \
    && kubectl create namespace ${ARGO_NAMESPACE} \
    && echo "apply manifests ${ARGO_MANIFEST_URL}" \
    && kubectl apply -n ${ARGO_NAMESPACE} -f ${ARGO_MANIFEST_URL}
