create-cluster:
	minikube start --driver=docker --nodes 3 --profile poc 

start-cluster:
	minikube status -p poc && k config use-context poc

delete-cluster:
	minikube delete --profile poc

argo-workflows:
	@export ARGO_WORKFLOWS_VERSION="v3.7.2"
	@kubectl create namespace argowf
	@kubectl apply -n argowf -f "https://github.com/argoproj/argo-workflows/releases/download/${ARGO_WORKFLOWS_VERSION}/quick-start-minimal.yaml"

argo-cd:
	@kubectl create namespace argocd
	@kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
