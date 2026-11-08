
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

# Creates a tiny, completely free/harmless resource to test the run
resource "aws_sns_topic" "demo_topic" {
  name = "se-demo-test-topic"
}
