terraform {
  backend "s3" {
    bucket  = "cloudgroupbackend"
    key     = "cginfra/basicinfra.tfstate"
    region  = "ap-south-1"
    encrypt = true
  }
}

provider "aws" {
  region = "ap-south-1"
}