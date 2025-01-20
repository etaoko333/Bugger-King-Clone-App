terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.18.0"
    }
  }

  backend "s3" {
    bucket         	   = "project-web.bucket"
    key              	   = "state/terraform.tfstate"
    region         	   = "us-west-1"
    encrypt        	   = true
    dynamodb_table = "Minecratf-dynamo"
  }
}