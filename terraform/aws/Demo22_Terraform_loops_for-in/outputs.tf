
output "instance_ids" {
  value = aws_instance.servers[*].id
}

output "instance_public_ips" {
  value = aws_instance.servers[*].public_ip
}

output "server_id_ip" {
  value = [
  for x in aws_instance.servers :
   "Server with ID: ${x.id} has Public IP of ${x.public_ip}"
  ]
}


output "server_id_map" {
  value = {
    for x in aws_instance.servers :
    x.id => x.public_ip
  }
}

output "users_unique_id_arn" {
  value = [
  for user in aws_iam_user.user:
  "UserID: ${user.unique_id} has ARN: ${user.arn}"
  ]
}

output "users_unique_id_name_map" {
  value = {
    for user in aws_iam_user.user:
    user.unique_id  =>  user.name
  }
}


output "users_unique_id_name_custom" {
  value = {
    for user in aws_iam_user.user:
    user.unique_id  =>  user.name
    if length(user.name) < 7
  }
}