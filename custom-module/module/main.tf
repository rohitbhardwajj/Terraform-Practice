resource "aws_instance" "this" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name

  tags = {
    Name = var.instance_name
  }

  root_block_device {
    volume_size = 8
    volume_type = "gp2"
  }
}