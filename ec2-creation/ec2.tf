# vpc=default , security sg , key-pair , ec2


resource "aws_instance" "automate-instance" {
  ami           = var.amiid
  key_name      = aws_key_pair.login-key.key_name
  instance_type = "t3.micro"
  security_groups = [aws_security_group.allow_tls.name]
  

  tags = {
    Name = "dev"
  }

  root_block_device {
    volume_size = 8
    volume_type = "gp2"
  }
}


