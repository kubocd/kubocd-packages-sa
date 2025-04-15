#!/bin/bash

export OCI_REPO_PREFIX=quay.io/kubocd/packages
#export OCI_REPO_PREFIX=localhost:5001/packages
#export OCI_REPO_PREFIX=ghcr.io/sergealexandre/kubocd/packages

export MYDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

export KUBOCD=$( cd "$MYDIR/../kubocd/" && pwd)

cd "${KUBOCD}" &&  if ! make build-kubocd; then exit $?; fi >/dev/stderr

cd "${MYDIR}" || exit

for pck in packages/*.yaml
do
  echo
  "${KUBOCD}/bin/kubocd" pack $pck
done

