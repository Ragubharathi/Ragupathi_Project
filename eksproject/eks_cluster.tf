resource "aws_iam_role"   "eks-role" {
  name  = "eks-cluster-role-demo"
  assume_role_policy = jsonencode ({
    statement = [{
        Action = "sts:AssumeRole"
        Effect = "Allow"
        principal = {
            service = "eks.amazonaws.com"
        }
    }]
  })
}

resource "aws_iam_role_policy_attachment" "eks_policy" {
 role = aws_iam_role.eks-role.name
 policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
}


resource "aws_eks_cluster" "eks_cluster" {
  name = "my_eks_cluster"
  role_arn = aws_iam_role.eks_role.arn
  
  vpc_config {
    subnet_ids = var.subnet_ids
  }
  tags = {
    Name = "eks_cluster"
  }
}


