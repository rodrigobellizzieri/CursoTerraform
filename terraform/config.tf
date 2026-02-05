terraform {
  backend "s3" {
    bucket       = "tfstate-curso-terraform-rodrigo-bellizzieri"
    key          = "dev/terraform.tfstate"
    region       = "us-west-2"
    use_lockfile = true
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.28.0"
    }
  }
}