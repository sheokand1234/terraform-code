terraform {
  required_version = "~> 1.1.0" # which means any version equal & above 0.14 like 0.15, 0.16 etc and < 1.xx
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "= 3.53.0"
    }
  }

}
/*
terraform {
  backend "local" {
    path = "./terraform/terraform.tfstate"
  }
}
*/
provider "aws" {
  region  = var.aws_region
  #profile = "terra"
}
  # Adding Backend as S3 for Remote State Storage
