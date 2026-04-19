```
cd ...../0.1.0/crds

wget https://raw.githubusercontent.com/keycloak/keycloak-k8s-resources/26.6.1/kubernetes/keycloaks.k8s.keycloak.org-v1.yml
wget https://raw.githubusercontent.com/keycloak/keycloak-k8s-resources/26.6.1/kubernetes/keycloakrealmimports.k8s.keycloak.org-v1.yml

cd ../templates

wget https://raw.githubusercontent.com/keycloak/keycloak-k8s-resources/26.6.1/kubernetes/kubernetes.yml

```

```
cd ...../26.6.1

helm -n keycloak upgrade -i keycloak-operator . --create-namespace

helm -n keycloak uninstall keycloak-operator


kubectl delete ns keycloak

```