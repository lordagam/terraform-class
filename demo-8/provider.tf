terraform {
  backend "s3" {
    bucket = "terraform-state-lidor"
    key = "eu-central-1/state/terraform.tfstate"
    region = "eu-central-1"
    dynamodb_table = "terraform-lock-table-lidor"

  }
}

provider "aws" {
    region = "eu-central-1"
}