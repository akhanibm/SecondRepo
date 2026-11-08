
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

resource "aws_dynamodb_table" "tfc_example_table" {
  name         = "se-demo-table"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"


  attribute {
    name = "LockID"
    type = "S"
  }
}
