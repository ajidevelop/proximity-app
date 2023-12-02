terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-west-2"
}

data "archive_file" "zip" {
  type = "zip"
  source_dir = "src"
  output_path = "main.zip"
}

module "lambda_permissions" {
  source = "github.com/ajidevelop/monorepo//apps/proximity-service/modules/lambda"
}