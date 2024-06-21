terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.55.0"
    }
  }
}

provider "aws" {
  region     = "us-east-1"
}


resource "aws_instance" "web" {
  ami           = "ami-08a0d1e16fc3f61ea"
  instance_type = "t2.micro"
  key_name      = "vpc-key"
  tags = {
    Name = "first-tf-instance"
  }
}

