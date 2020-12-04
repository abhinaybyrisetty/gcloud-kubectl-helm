#!/usr/bin/env bash

set -e
set -x

if helm version --client | grep -q 'SemVer:"v2';then
    helm init --client-only
else
    helm repo add stable https://kubernetes-charts.storage.googleapis.com
fi
