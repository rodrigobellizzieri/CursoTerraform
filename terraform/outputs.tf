output "web_public_ip" {
  description = "IP público da instância web"
  value       = module.web-server.public_ip
}

output "web_vpc_id" {
  description = "ID da VPC criada"
  value       = module.web-server.vpc_id
}