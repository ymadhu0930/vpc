variable "var_cidr_block" {
}

variable "var_DMZ_subnets" {
  type = list(string)
}

variable "var_Infra_subnets" {
  type = list(string)
}

variable "var_present" {
  default = "true"
}

variable "var_vpc_name" {}
