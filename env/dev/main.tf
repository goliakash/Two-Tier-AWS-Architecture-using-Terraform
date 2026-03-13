module "vpc"{
    source = "../../modules/vpc"
    project_name = "two-tier-terraform-dev"
    vpc_cidr            = "10.0.0.0/16"
    public_subnet_cidr  = "10.0.1.0/24"
    private_subnet_cidrs = [
        "10.0.2.0/24",
        "10.0.3.0/24"
        ]

    availability_zone   = [
        "ap-south-1a",
        "ap-south-1b"
    ]
}

module "security_group" {
    source = "../../modules/security_group"
    project_name = "two-tier-terraform-dev"
    vpc_id = module.vpc.vpc_id
}

module "ec2"{
    source = "../../modules/ec2"
    project_name = "two-tier-terraform-dev"
    subnet_id = module.vpc.public_subnet_id
    security_group_id = module.security_group.security_group_id
    key_name = "two-tier-key"
}

module "db_security_group" {
    source = "../../modules/DB_security_group"
    project_name = "two-tier-terraform-dev"
    vpc_id = module.vpc.vpc_id
    app_sg_id = module.security_group.security_group_id
}

module "rds" {
  source        = "../../modules/rds"
  project_name  = "two-tier"
  subnet_ids    = module.vpc.private_subnet_ids
  db_sg_id      = module.db_security_group.db_sg_id
  av       = ["ap-south-1a",
   "ap-south-1b"]
}

# EC2 Public IP
output "ec2_public_ip" {
  value = module.ec2.public_ip
}

# RDS Endpoint
output "rds_endpoint" {
  value = module.rds.db_endpoint
}

# VPC ID
output "vpc_id" {
  value = module.vpc.vpc_id
}
