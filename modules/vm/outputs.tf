output "ip_servers" {
    description = "IP de los servidores"
    value = [for server in azurerm_public_ip.devops_ip : {"name": server.id,"ip" : server.ip_address}]
}
output "servers" {
    description = "mapa nombre del servidor => IP publica"
    value = {for name, ip in azurerm_public_ip.devops_ip : name => ip.ip_address}
}
