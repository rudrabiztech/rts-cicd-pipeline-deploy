terraform {
  backend "s3" {
    bucket  = "jig-adm-aws-state"
    key     = "jig-adm-aws-state"
    region  = "ap-southeast-1"
    encrypt = true
    profile = "jig-adm-aws"
  }
}
