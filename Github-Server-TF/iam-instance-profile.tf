resource "aws_iam_instance_profile" "instance-profile" {
  name = "Bugger-king"
  role = aws_iam_role.iam-role.name
}