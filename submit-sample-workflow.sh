#!/bin/bash -eu

name=$1
if [ -z "$name" ]; then
    echo -e "\033[0;31mplease select example name.\033[0m" 1>&2
    exit 1
fi

argo submit --watch https://raw.githubusercontent.com/argoproj/argo/master/examples/${name}.yaml
