# Project Bedrock
This project deploys an EKS cluster using Terraform and the retail store sample app on Kubernetes.

## Setup
- Terraform files in terraform/ create a VPC and EKS cluster.
- Kubernetes manifests deployed via kubectl apply.
- CI/CD pipeline in .github/workflows/deploy.yml.

## Verification
- EKS cluster: kubectl get nodes
- App: kubectl get svc ui
