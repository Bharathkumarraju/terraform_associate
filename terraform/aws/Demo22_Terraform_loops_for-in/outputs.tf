
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