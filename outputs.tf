output "PUBLIC_IP" {
    value = aws_instance.App_server1.public_ip
}

output "PRIVATE_IP" {
    value = aws_instance.App_server1.private_ip
}
