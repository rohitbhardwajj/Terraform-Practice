terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }

  backend "s3" {
    bucket         = "automate-s3-bucket-tf"      # actual bucket naam, hardcoded
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "my-table"        # actual table naam, hardcoded

    #   use_lockfile = true   no need to create dynaodb table, as it is already created in s3-creation module
  }
}