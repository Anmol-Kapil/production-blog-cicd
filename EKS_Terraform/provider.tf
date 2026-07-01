provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      Project     = "Production-Blog-App"
      Environment = "Production"
      ManagedBy   = "Terraform"
    }
  }
}
