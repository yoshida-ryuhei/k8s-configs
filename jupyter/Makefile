
config.yaml:
	helm inspect values jupyterhub/jupyterhub > config.yaml

.PHONY: install_jupyter_by_helm
install_jupyter_by_helm: config.yaml
	helm upgrade --cleanup-on-faile \
		--install main jupyterhub/jupyterhub \
		--namespace jupyter-test \
		--create-namespace \
		--version=$(shell helm inspect chart jupyterhub/jupyterhub  | yq .version) \
		--value config.yaml

