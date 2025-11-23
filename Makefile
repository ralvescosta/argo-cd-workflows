create-cluster:
	minikube start --driver=docker --nodes 2 --profile poc 

start-cluster:
	minikube status -p poc && k config use-context poc

delete-cluster:
	minikube delete --profile poc

argo-workflows:
	@kubectl create namespace argo
	@kubectl apply -n argo -f "https://github.com/argoproj/argo-workflows/releases/download/v3.7.2/quick-start-minimal.yaml"

argo-cd:
	@kubectl create namespace argocd
	@kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
