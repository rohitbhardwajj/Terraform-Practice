resource "aws_instance" "automate-instance" {
  ami           = "ami-0b6d9d3d33ba97d99"

  
  instance_type = "t3.small"
  tags = {
    Name = "dev"
  }

  root_block_device {
    volume_size = 8
    volume_type = "gp2"
  }
}
