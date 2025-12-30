#!/bin/bash

export OCI_REPO_PREFIX=quay.io/kubosa/packages
#export OCI_REPO_PREFIX=localhost:5001/packages
#export OCI_REPO_PREFIX=ghcr.io/sergealexandre/kubocd/packages

export MYDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

for pck in packages/*.yaml
do
  echo
  kubocd pack $pck
done

