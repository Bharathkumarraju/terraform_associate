output "users_arns" {
  value = values(aws_iam_user.user)[*].arn
}