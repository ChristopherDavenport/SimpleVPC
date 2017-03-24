module "vpc" {
  source = "github.com/terraform-community-modules/tf_aws_vpc"

  name = "${var.name}"

  cidr = "10.1.0.0/16"
  private_subnets = ["10.1.1.0/24", "10.1.2.0/24"]
  public_subnets  = ["10.1.101.0/24", "10.1.102.0/24"]
  database_subnets = ["10.1.201.0/24", "10.1.202.0/24"]

  # Disabled NAT Gateway means internal nets cannot access the outside internet.
  enable_nat_gateway = false

  azs      = ["us-east-1a", "us-east-1b"]

  tags = "${var.tags}"
}
