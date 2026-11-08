
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


# 3. Define the EC2 Instance resource
resource "aws_instance" "my_web_server" {
  ami           = "ami-0c7217cdde317cfec" # Replace with a valid AMI ID for your region
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform-EC2-Example"
  }
}

  attribute {
    name = "LockID"
    type = "S"
  }
}
