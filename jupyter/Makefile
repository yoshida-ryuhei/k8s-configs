
.PHONY: add_jupyterhub_repo
add_jupyterhub_repo:
	helm repo add jupyterhub https://hub.jupyter.org/helm-chart/
	helm repo update

config.yaml:
	helm inspect values jupyterhub/jupyterhub > config.yaml

.PHONY: install_jupyter_by_helm
install_jupyter_by_helm: config.yaml
	helm upgrade --cleanup-on-fail \
		--install main jupyterhub/jupyterhub \
		--namespace jupyter-test \
		--create-namespace \
		--version=$(shell helm inspect chart jupyterhub/jupyterhub  | yq .version) \
		--value config.yaml

