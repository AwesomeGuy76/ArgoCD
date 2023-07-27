terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.0"
    }
  }
}

# provider "aws" {
#   region = "ap-northeast-2"
# }

provider "aws" {
  region = var.region
}

resource "aws_vpc" "swyang_vpc" {
  cidr_block           = "50.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true
  tags = {
    Name = "${var.tag}_vpc"
  }
}
