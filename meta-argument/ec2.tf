
resource "aws_instance" "automate-instance" {
  ami           = "ami-0b6d9d3d33ba97d99"
  for_each = tomap({
    "dev" = "t3.small"
    "prod" = "t3.micro"
  
  })
  
  instance_type = each.value
  tags = {
    Name = each.key
  }

  root_block_device {
    volume_size = 8
    volume_type = "gp2"
  }
}


