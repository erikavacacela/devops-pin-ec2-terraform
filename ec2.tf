provider "aws" {
  region  = "us-west-1"
}

resource "aws_instance" "ec2-uw1-1a-d-devops-pin" {
  ami = "ami-01f87c43e618bf8f0"
  instance_type = "t2.micro"
  key_name = aws_key_pair.devops-pin-kp.key_name
  user_data = "${file("ec2_user_data.sh")}"
  iam_instance_profile = aws_iam_instance_profile.ec2-profile-devops-pin.name

  tags = {
    Name = "ec2-uw1-1a-d-devops-pin"
    Project = "devops"
  }

  security_groups = ["${aws_security_group.devops-pin-sg.name}"]
}

output "public_ip" {
  value = "${aws_instance.ec2-uw1-1a-d-devops-pin.public_ip}"
}
