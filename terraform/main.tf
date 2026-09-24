provider "aws" {
  region = var.aws_region
}

resource "aws_vpc" "bluenet_perimeter" {
  cidr_block           = "10.10.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    Name = "BlueNet-Core-VPC"
    Owner = "M.Mimi"
  }
}

resource "aws_customer_gateway" "cisco_r1_onprem" {
  bgp_asn    = 65000
  ip_address = "10.10.101.2" # Edge Gateway
  type       = "ipsec.1"
}