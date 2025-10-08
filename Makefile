argo-workflows:
	@export ARGO_WORKFLOWS_VERSION="v3.7.2"
	@kubectl create namespace argowf
	@kubectl apply -n argowf -f "https://github.com/argoproj/argo-workflows/releases/download/${ARGO_WORKFLOWS_VERSION}/quick-start-minimal.yaml"

argo-cd:
	@export ARGO_CD_VERSION="v2.8.7"
	@kubectl create namespace argocd
	@kubectl apply -n argocd -f "https://raw.githubusercontent.com/argoproj/argo-cd/${ARGO_CD_VERSION}/manifests/install.yaml"
