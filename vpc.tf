resource "aws_vpc" "main" {
  cidr_block = var.var_cidr_block
  enable_dns_support = "true"
  enable_dns_hostnames = "true"

  tags = {
    Name = var.var_vpc_name
  }
}
