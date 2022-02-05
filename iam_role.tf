resource "aws_iam_role" "devops-pin-admin-role" {
  name = "devops-pin-admin-role"

  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        "Effect": "Allow",
        "Action": "*",
        "Resource": "*"
      },
    ]
  })

  tags = {
    Project = "devops"
  }
}
