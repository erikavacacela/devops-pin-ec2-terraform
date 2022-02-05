resource "aws_iam_instance_profile" "ec2-profile-brain" {
  name = "ec2-profile-brain"
  role = aws_iam_role.ec2-admin-role.name
}