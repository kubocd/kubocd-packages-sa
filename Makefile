
# NB: we need to create these charts to be able to populate a cluster without KuboCD

HELM_DOCKER_REPO := quay.io/sergealexandre/charts
#HELM_DOCKER_REPO := ghcr.io/sergealexandre/kubocd/charts


.PHONY: help
help: ## Display this help.
	@awk 'BEGIN {FS = ":.*##"; printf "\nUsage:\n  make \033[36m<target>\033[0m\n"} /^[a-zA-Z_0-9-]+:.*?##/ { printf "  \033[36m%-15s\033[0m %s\n", $$1, $$2 } /^##@/ { printf "\n\033[1m%s\033[0m\n", substr($$0, 5) } ' $(MAKEFILE_LIST)

all: cert-issuers-chart metallb-pool-chart ## Build all charts

.PHONY: cert-issuers-chart
cert-issuers-chart: ## Build and push helm chart for cert-issuers
	cd ./charts && helm package -d ./../tmp cert-issuers/0.1.0 && helm push ./../tmp/cert-issuers-0.1.0.tgz oci://${HELM_DOCKER_REPO}

.PHONY: metallb-pool-chart
metallb-pool-chart: ## Build and push helm chart for metallb-pool
	cd ./charts && helm package -d ./../tmp metallb-pool/0.1.0 && helm push ./../tmp/metallb-pool-0.1.0.tgz oci://${HELM_DOCKER_REPO}
