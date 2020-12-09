output "PUBLIC_IP" {
    value = aws_instance.App_server.public_ip
}

output "PRIVATE_IP" {
    value = aws_instance.App_server.private_ip
}