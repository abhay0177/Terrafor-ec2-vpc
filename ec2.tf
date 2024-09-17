#ec2-instance
resource "aws_instance" "my_ec2_instance" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = aws_subnet.my_subnet.id
  vpc_security_group_ids      = [aws_security_group.my_security_group.id]
  associate_public_ip_address = true
  key_name                    = aws_key_pair.deployer.key_name #key_name=resource attribute reference

  tags = {
    Name = "MyEc2Instance"
  }
}
