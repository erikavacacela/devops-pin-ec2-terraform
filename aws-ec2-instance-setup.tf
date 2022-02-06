terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }

  backend "s3" {}
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

# Set up EC2 intance
resource "aws_instance" "ec2-brain-devops" {
  ami = "ami-04505e74c0741db8d"
  instance_type = "t2.micro"
  key_name = aws_key_pair.aws_key.key_name
  user_data = "${file("ec2_user_data.sh")}"
  iam_instance_profile = aws_iam_instance_profile.ec2-profile-brain.name

  tags = {
    Name = "ec2-uw1-1a-d-devops-pin"
  }

  security_groups = ["${aws_security_group.devops-brain-sg.name}"]
}