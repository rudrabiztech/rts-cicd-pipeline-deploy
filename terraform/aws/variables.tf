variable "region" {
  type    = string
  default = "ap-southeast-1"
}

variable "sg-az1" {
  type    = string
  default = "ap-southeast-1a"
}

variable "sg-az2" {
  type    = string
  default = "ap-southeast-1b"
}

variable "vpc_cidr_block" {
  type    = string
  default = "10.1.0.0/16"
}

variable "aws-mysg-1a-web" {
  type    = string
  default = "10.1.10.0/24"
}

variable "aws-mysg-1a-app" {
  type    = string
  default = "10.1.20.0/24"
}

variable "aws-mysg-1a-db" {
  type    = string
  default = "10.1.30.0/24"
}

variable "aws-mysg-1b-web" {
  type    = string
  default = "10.1.11.0/24"
}

variable "aws-mysg-1b-app" {
  type    = string
  default = "10.1.21.0/24"
}

variable "aws-mysg-1b-db" {
  type    = string
  default = "10.1.31.0/24"
}

variable "irn-mysg-1a-web" {
  type    = string
  default = "10.1.50.0/24"
}

variable "irn-mysg-1a-app" {
  type    = string
  default = "10.1.60.0/24"
}

variable "irn-mysg-1a-db" {
  type    = string
  default = "10.1.70.0/24"
}

variable "irn-mysg-1b-web" {
  type    = string
  default = "10.1.51.0/24"
}

variable "irn-mysg-1b-app" {
  type    = string
  default = "10.1.61.0/24"
}

variable "irn-mysg-1b-db" {
  type    = string
  default = "10.1.71.0/24"
}

