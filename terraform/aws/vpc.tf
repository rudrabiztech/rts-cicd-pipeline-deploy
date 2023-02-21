provider "aws" {
  region  = var.region
  profile = "jig-adm-aws"
}

resource "aws_vpc" "jig-aws-adn" {
  cidr_block       = var.vpc_cidr_block
  instance_tenancy = "default"
  tags = {
    Name = "jig-aws-adn"
  }
}

resource "aws_subnet" "aws-mysg-1a-web" {
  vpc_id            = aws_vpc.jig-aws-adn.id
  cidr_block        = var.aws-mysg-1a-web
  availability_zone = var.sg-az1
  tags = {
    Name = "aws-mysg-1a-web"
  }
}

resource "aws_subnet" "aws-mysg-1a-app" {
  vpc_id            = aws_vpc.jig-aws-adn.id
  cidr_block        = var.aws-mysg-1a-app
  availability_zone = var.sg-az1
  tags = {
    Name = "aws-mysg-1a-app"
  }
}

resource "aws_subnet" "aws-mysg-1a-db" {
  vpc_id            = aws_vpc.jig-aws-adn.id
  cidr_block        = var.aws-mysg-1a-db
  availability_zone = var.sg-az1
  tags = {
    Name = "aws-mysg-1a-db"
  }
}

resource "aws_subnet" "aws-mysg-1b-web" {
  vpc_id            = aws_vpc.jig-aws-adn.id
  cidr_block        = var.aws-mysg-1b-web
  availability_zone = var.sg-az2
  tags = {
    Name = "aws-mysg-1b-web"
  }
}

resource "aws_subnet" "aws-mysg-1b-app" {
  vpc_id            = aws_vpc.jig-aws-adn.id
  cidr_block        = var.aws-mysg-1b-app
  availability_zone = var.sg-az2
  tags = {
    Name = "aws-mysg-1b-app"
  }
}

resource "aws_subnet" "aws-mysg-1b-db" {
  vpc_id            = aws_vpc.jig-aws-adn.id
  cidr_block        = var.aws-mysg-1b-db
  availability_zone = var.sg-az2
  tags = {
    Name = "aws-mysg-1b-db"
  }
}

resource "aws_subnet" "irn-mysg-1a-web" {
  vpc_id            = aws_vpc.jig-aws-adn.id
  cidr_block        = var.irn-mysg-1a-web
  availability_zone = var.sg-az1
  tags = {
    Name = "irn-mysg-1a-web"
  }
}

resource "aws_subnet" "irn-mysg-1a-app" {
  vpc_id            = aws_vpc.jig-aws-adn.id
  cidr_block        = var.irn-mysg-1a-app
  availability_zone = var.sg-az1
  tags = {
    Name = "irn-mysg-1a-app"
  }
}

resource "aws_subnet" "irn-mysg-1a-db" {
  vpc_id            = aws_vpc.jig-aws-adn.id
  cidr_block        = var.irn-mysg-1a-db
  availability_zone = var.sg-az1
  tags = {
    Name = "irn-mysg-1a-db"
  }
}

resource "aws_subnet" "irn-mysg-1b-web" {
  vpc_id            = aws_vpc.jig-aws-adn.id
  cidr_block        = var.irn-mysg-1b-web
  availability_zone = var.sg-az2
  tags = {
    Name = "irn-mysg-1b-web"
  }
}

resource "aws_subnet" "irn-mysg-1b-app" {
  vpc_id            = aws_vpc.jig-aws-adn.id
  cidr_block        = var.irn-mysg-1b-app
  availability_zone = var.sg-az2
  tags = {
    Name = "irn-mysg-1b-app"
  }
}

resource "aws_subnet" "irn-mysg-1b-db" {
  vpc_id            = aws_vpc.jig-aws-adn.id
  cidr_block        = var.irn-mysg-1b-db
  availability_zone = var.sg-az2
  tags = {
    Name = "irn-mysg-1b-db"
  }
}