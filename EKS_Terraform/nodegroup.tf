############################################################
# EKS Managed Node Group
############################################################

resource "aws_eks_node_group" "eks_nodes" {

  cluster_name    = aws_eks_cluster.eks_cluster.name
  node_group_name = "${var.cluster_name}-node-group"

  node_role_arn = aws_iam_role.eks_node_role.arn

  subnet_ids = [
    aws_subnet.public_subnet_1.id,
    aws_subnet.public_subnet_2.id
  ]

  instance_types = [
    var.node_instance_type
  ]

  capacity_type = "ON_DEMAND"

  scaling_config {

    desired_size = var.desired_capacity
    min_size     = var.min_capacity
    max_size     = var.max_capacity

  }

  update_config {

    max_unavailable = 1

  }

  ami_type = "AL2023_x86_64_STANDARD"

  depends_on = [

    aws_iam_role_policy_attachment.worker_node_policy,
    aws_iam_role_policy_attachment.cni_policy,
    aws_iam_role_policy_attachment.ecr_policy

  ]

  tags = {

    Name = "${var.cluster_name}-node-group"

  }

}
