variable "aws_region" {
    description = "The AWS region where resources will be created"
    type        = string
    default     = "ap-south-1"
}

variable "cluster_name" {
  description = "Name of the EKS Cluster"
  type        = string
  default     = "cohere-toolkit-cluster"
}

variable "node_group_name" {
  description = "Name of the EKS Node Group"
  type        = string
  default     = "cohere-toolkit-node-group"
}

variable "backend_repository_name" {
  description = "Name of the ECR repository for the backend deployment"
  type        = string
  default     = "cohere_toolkit_repo/cohere_backend_deployment"
}

variable "frontend_repository_name" {
  description = "Name of the ECR repository for the frontend deployment"
  type        = string
  default     = "cohere_toolkit_repo/cohere_frontend_deployment"
}

variable "node_instance_type" {
  description = "EC2 instance type for EKS nodes"
  type        = string
  default     = "t4g.medium"  # ARM-compatible instance type
}

variable "eks_cluster_role_name" {
  description = "Name of the IAM role for the EKS Cluster"
  type        = string
  default     = "cohere-toolkit-cluster-role"
}

variable "eks_node_group_role_name" {
  description = "Name of the IAM role for the EKS Node Group"
  type        = string
  default     = "cohere-toolkit-node-group-role"
}

variable "custom_inline_policy_name" {
  description = "Name of the custom inline policy for the EKS Node Group"
  type        = string
  default     = "MyInlinePolicy"
}