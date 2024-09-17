output "ec2_public_ip" {
  value = aws_instance.my_ec2_instance.public_ip
}

output "keyname" {
  value = aws_key_pair.deployer.key_name
}

output "security-group-id" {
  value = aws_security_group.my_security_group.id
}