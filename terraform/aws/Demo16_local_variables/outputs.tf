output "vpc_id" {
  value = aws_vpc.main.id
}

output "public_ip" {
  value = aws_eip.static_ip.public_ip
}