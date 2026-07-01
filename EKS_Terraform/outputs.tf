############################################################
# Outputs
############################################################

output "cluster_name" {
  value = aws_eks_cluster.eks_cluster.name
}

output "cluster_endpoint" {
  value = aws_eks_cluster.eks_cluster.endpoint
}

output "cluster_version" {
  value = aws_eks_cluster.eks_cluster.version
}

output "vpc_id" {
  value = aws_vpc.eks_vpc.id
}

output "public_subnet_1" {
  value = aws_subnet.public_subnet_1.id
}

output "public_subnet_2" {
  value = aws_subnet.public_subnet_2.id
}

output "node_group_name" {
  value = aws_eks_node_group.eks_nodes.node_group_name
}
