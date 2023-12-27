locals {
  env     = "dev"
  project = "terragrunt-eks"

  # EKS variables
  eks_cluster_name                    = "${local.env}-${local.project}-cluster"
  eks_cluster_version                 = "1.27"
  eks_create_aws_auth_configmap       = false
  eks_manage_aws_auth_configmap       = true
  region = "eu-west-2"
  
  # EKS allowed users
  aws_auth_users = [
    {
      userarn  = "arn:aws:iam::343568180534:user/lidorg"
      username = "lidorg"
      groups   = ["system:masters"]
    }
  ]
  
  # VPC variables
  vpc_cidr                             = "10.0.0.0/16"
  vpc_enable_nat_gateway               = true
  vpc_enable_single_nat_gateway        = true
  availability_zone                    = ["${local.region}a", "${local.region}b", "${local.region}c"]
  tags = {
    Name            = "${local.env}-${local.project}"
    Environment     = "${local.env}"
  }
}