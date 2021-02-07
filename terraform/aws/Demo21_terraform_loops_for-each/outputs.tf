output "users_arns" {
  value = values(aws_iam_user.user)[*].arn
}

output "instance_ids" {
  value = values(aws_instance.bharath_server)[*].id
}

output "prod_instace_id" {
  value = aws_instance.bharath_server["Prod"].id
}

output "instance_public_ips" {
  value = values(aws_instance.bharath_server)[*].public_ip
}

output "web_instance_id" {
  value = aws_instance.server["web"].id
}
output "app_instance_id" {
  value = aws_instance.server["app"].id
}

output "web_and_app_instance_ids" {
  value = values(aws_instance.server)[*].id
}

output "bastion_public_ip" {
  value = var.create_bastion == "YES" ? aws_instance.bastion_server["bastion"].public_ip : null
}