terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.20.0"
    }
  }
  backend "s3" {
  bucket = "my-unique-bucket-name-abarasan-1234567890"
  key    = "global/s3/terraform.tfstate"
  region = "us-east-1"
}
}

provider "aws" {
  region = "us-east-1"
}

