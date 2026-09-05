resource "aws_s3_bucket" "s3_bucket" {
  bucket = "automate-s3-bucket-tf"
  
  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

# checking state lock workin or not


resource "aws_instance" "automate-instance" {
  ami           = "ami-0b6d9d3d33ba97d99"

  
  instance_type = "t3.small"
  tags = {
    Name = "automate-instance"
  }

  root_block_device {
    volume_size = 8
    volume_type = "gp2"
  }
}


