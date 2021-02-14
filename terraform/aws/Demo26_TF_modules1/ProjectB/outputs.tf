output "server_ip" {
  value = module.prod_server.web_server_public_ip
}

output "servers_loop_count_ips" {
  value = module.server_loop_count[*].web_server_public_ip
}

output "servers_loop_foreach_ips" {
  value = values(module.server_loop_foreach)[*].web_server_public_ip
}