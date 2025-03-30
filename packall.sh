#!/bin/bash

export OCI_REPO_PREFIX=quay.io/kubocd/applications
#export OCI_REPO_PREFIX=localhost:5001/applications
#export OCI_REPO_PREFIX=ghcr.io/sergealexandre/kubocd/applications

export MYDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

for app in apps/*.yaml
do
  echo
  echo "=============================================== Will pack $app"
  kubocd pack $app
done

