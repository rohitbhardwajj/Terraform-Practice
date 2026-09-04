resource "aws_s3_bucket" "s3_bucket" {
  bucket = "automate-s3-bucket-tf"
  
  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

