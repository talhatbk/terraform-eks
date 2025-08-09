provider "aws" {
  region = var.region
}

module "iam" {
  source       = "./modules/iam"
  cluster_name = var.cluster_name
}

module "eks" {
  source               = "./modules/eks"
  cluster_name         = var.cluster_name
  subnet_ids           = var.private_subnet_ids
  eks_cluster_role_arn = module.iam.eks_cluster_role_arn
  eks_node_role_arn    = module.iam.eks_node_role_arn
  desired_capacity     = var.desired_capacity
  min_size             = var.min_size
  max_size             = var.max_size
}
