resource "aws_iam_role" "node_group_role" {
  name = "eks_node_group_role"
  assume_role_policy = jsonencode ({
    Statement  = [{
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Principal = {
           Service = "eks.amazonaws.com"
           }
    }]
  })
}

resource "aws_iam_role_policy_attachment" "node_policy" {
  role = aws_iam_role.node_group_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"

}

resource "aws_eks_node_group" "eks_nodes" {
  cluster_name = aws_eks_cluster.eks_cluster.name
  node_group_name = "eks_node_group"
  node_role_arn = aws_iam_role.node_group_role.arn
  subnet_ids = var.subnet.ids

  scaling_config {
     desired_size = 2
     max_size = 3
     min_size = 1

  }

}



