provider "aws" {
region = var.region
}
module "vpc" {
source  = "terraform-aws-modules/vpc/aws"
version = "~> 5.0"
name = "innovatemart-vpc"
cidr = var.vpc_cidr
azs             = ["\({var.region}a", "\){var.region}b"]
private_subnets = ["10.0.1.0/24", "10.0.2.0/24"]
public_subnets  = ["10.0.101.0/24", "10.0.102.0/24"]
enable_nat_gateway = true
single_nat_gateway = true
}
module "eks" {
source  = "terraform-aws-modules/eks/aws"
version = "~> 20.0"
cluster_name    = var.cluster_name
cluster_version = "1.30"
vpc_id          = module.vpc.vpc_id
subnet_ids      = module.vpc.private_subnets
cluster_endpoint_public_access = true
eks_managed_node_groups = {
 default = {
   min_size     = 1
   max_size     = 3
   desired_size = 2
   instance_types = ["t3.medium"]
 }
}
enable_cluster_creator_admin_permissions�=�true
}
