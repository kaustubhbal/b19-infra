provider "aws" {
    region = "ap-south-1"
}

module "rds" {
    source = "./modules/rds"
}

module "eks" {
    source = "./modules/eks"
    project = var.project
    desired_nodes = var.desired
    max_nodes = var.max
    min_nodes = var.min
    node_instance_type = var.instance_type
}

module "s3" {
    source = "./modules/s3"
}
