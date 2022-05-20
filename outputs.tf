output "output_vpc_id" {
  value = aws_vpc.main.id
}
output "output_vpc_cidr" {
  value = aws_vpc.main.cidr_block
}

output "output_infra_subnet_id"{
  value = aws_subnet.vpc_subnets_infra.*.id
}

output "output_dmz_subnet_id"{
  value = aws_subnet.vpc_subnets_DMZ.*.id
}
