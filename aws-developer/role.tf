resource "aws_iam_role" "DemoRoleForEC2" {
  name               = "DemoRoleForEC2"
  assume_role_policy = jsonencode({
    Version   = "2012-10-17",
    Statement = [
      {
        Action    = "sts:AssumeRole",
        Effect    = "Allow",
        Principal = {
          Service = "ec2.amazonaws.com"
        }
      }
    ]
  })
}

resource "aws_iam_instance_profile" "instanceProfile" {
  name = "instanceProfile"
  role = aws_iam_role.DemoRoleForEC2.name
}

# Get the policy by name
data "aws_iam_policy" "iamReadOnlyAccess" {
  name = "IAMReadOnlyAccess"
}

# Attach the policy to the role
resource "aws_iam_role_policy_attachment" "attachIamReadOnlyAccess" {
  role       = aws_iam_role.DemoRoleForEC2.name
  policy_arn = data.aws_iam_policy.iamReadOnlyAccess.arn
}