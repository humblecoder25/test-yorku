	terraform {
  required_version = ">= 1.5.0, < 2.0.0"

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



resource "aws_instance" "firstEC2" {
  ami           = "ami-0d6927ccef429da8c"
  instance_type = "t2.micro"
  tags = {
    Name = "Soumya_tf_EC2"
  }
}
