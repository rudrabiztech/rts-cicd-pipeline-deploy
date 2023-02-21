provider "aws" {
  region  = var.region
  profile = "jig-adm-aws"
}

resource "aws_vpc" "jig-aws-adn" {
  cidr_block       = var.vpc_cidr_block
  instance_tenancy = "default"
}

resource "aws_subnet" "aws-mysg-1a-web" {
  vpc_id            = aws_vpc.jig-aws-adn.id
  cidr_block        = var.aws-mysg-1a-web
  availability_zone = var.region
}
