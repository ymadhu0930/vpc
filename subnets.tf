data "aws_availability_zones" "AZs" {
  state = "available"
}


resource "aws_subnet" "vpc_subnets_DMZ" {
  count = var.var_present && length(var.var_DMZ_subnets) >0 ? length(var.var_DMZ_subnets) : 0
  vpc_id     = aws_vpc.main.id
  cidr_block = var.var_DMZ_subnets[count.index]
  availability_zone = data.aws_availability_zones.AZs.names[count.index]
  tags = {
    Name = "DMZ-Subnets"
  }
}

resource "aws_subnet" "vpc_subnets_infra" {
  count = var.var_present && length(var.var_Infra_subnets) >0 ? length(var.var_Infra_subnets) : 0
  vpc_id     = aws_vpc.main.id
  cidr_block = var.var_Infra_subnets[count.index]
  availability_zone = data.aws_availability_zones.AZs.names[count.index]
  tags = {
    Name = "INFRA-Subnets"
  }
}
