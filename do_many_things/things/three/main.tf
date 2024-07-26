terraform {
  required_version = "1.20.3"
  backend "s3" {
    bucket         = "my-special-state"
    region         = "us-east-1"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.30.0"
    }
  }
}

module "gitlab-runner" {
  source  = "cattle-ops/gitlab-runner/aws"
  version = "1.30.4"
}


module "github-runner" {
  source  = "kitty-ops/github-runner/aws"
  version = "1.20.3"
}


module "my-magic-thing" {
  source  = "oops-ops/my-magic-thing/aws"
  version = "3.29.0"
}