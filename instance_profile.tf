resource "aws_iam_instance_profile" "ec2-profile-devops-pin" {
  name = "ec2-profile-devops-pin"
  role = "ec2-role-pin"
  # role = aws_iam_role.devops-pin-admin-role.name
}