terraform {
  required_version = "1.30.3"
  backend "s3" {
    bucket         = "my-special-state"
    region         = "us-east-1"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.30.0"
    }
  }
}
