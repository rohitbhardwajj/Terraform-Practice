
resource "aws_instance" "automate-instance" {
  ami           = "ami-0b6d9d3d33ba97d99"
  
  instance_type = "t3.micro"
  tags = {
    Name = "dev"
  }

  root_block_device {
    volume_size = 8
    volume_type = "gp2"
  }
}


resource "aws_instance" "manual-instance" {
  
   ami = "ami-0b6d9d3d33ba97d99"
    instance_type = "t3.micro"
     tags = {
    Name = "dev"
  }

  root_block_device {
    volume_size = 8
    volume_type = "gp2"
  }
}
# terraform import aws_instance.manual-instance i-0b3bc67ae5f8df6b7
# run this command to import an instance into terraform state file. The instance id can be found in the aws console.
