#!/bin/bash

# For regctl:
# brew install regclient

export TARGET_REGISTRY=host.docker.internal:5001

pullpush () {
  echo "$1  ---------------------> $TARGET_REGISTRY/$2"
  regctl image copy --digest-tags $1 $TARGET_REGISTRY/$2
}

pullpush ghcr.io/stefanprodan/podinfo:6.7.1 stefanprodan/podinfo:6.7.1
pullpush ghcr.io/stefanprodan/podinfo:6.8.0 stefanprodan/podinfo:6.8.0

pullpush docker.io/bitnami/redis:7.4.1-debian-12-r3 bitnami/redis:7.4.1-debian-12-r3
pullpush ghcr.io/joeferner/redis-commander:latest joeferner/redis-commander:latest

pullpush ghcr.io/cloudnative-pg/cloudnative-pg:1.25.1 cloudnative-pg/cloudnative-pg:1.25.1

pullpush quay.io/jetstack/cert-manager-controller:v1.17.1 jetstack/cert-manager-controller:v1.17.1
pullpush quay.io/jetstack/trust-manager:v0.16.0 jetstack/trust-manager:v0.16.0

pullpush quay.io/metallb/controller:v0.14.9 metallb/controller:v0.14.9
pullpush quay.io/metallb/speaker:v0.14.9 metallb/speaker:v0.14.9
pullpush quay.io/frrouting/frr:9.1.0 frrouting/frr:9.1.0

pullpush registry.k8s.io/ingress-nginx/controller:v1.12.1 ingress-nginx/controller:v1.12.1
pullpush registry.k8s.io/ingress-nginx/kube-webhook-certgen:v1.5.2 ingress-nginx/kube-webhook-certgen:v1.5.2
pullpush registry.k8s.io/defaultbackend-amd64:1.5 defaultbackend-amd64:1.5



