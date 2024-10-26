output "backend_ecr_repository_url" {
  value = aws_ecr_repository.cohere_backend_repo.repository_url
}

output "frontend_ecr_repository_url" {
  value = aws_ecr_repository.cohere_frontend_repo.repository_url
}

output "eks_cluster_name" {
  value = aws_eks_cluster.eks_cluster.name
}

output "node_group_name" {
  value = aws_eks_node_group.eks_node_group.node_group_name
}