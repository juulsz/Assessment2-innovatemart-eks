variable "region" {
description = "AWS region to deploy resources in"
type        = string
default     = "eu-west-1"
}
variable "vpc_cidr" {
description = "VPC CIDR block"
type        = string
default     = "10.0.0.0/16"
}
variable "cluster_name" {
description = "EKS Cluster name"
type        = string
default     = "innovatemart-eks"
}
