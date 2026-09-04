resource "aws_s3_bucket" "s3_bucket" {
  bucket = "automate-s3-bucket-tf"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

# Upload data
resource "aws_s3_object" "object" {
  bucket       = aws_s3_bucket.s3_bucket.id
  key          = "mot.png"
  source       = "./mot.png"
  content_type = "image/png"
}

# Disable S3 public access blocking
resource "aws_s3_bucket_public_access_block" "permision" {
  bucket = aws_s3_bucket.s3_bucket.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}


# Public read permission
resource "aws_s3_bucket_policy" "public_read" {
  bucket = aws_s3_bucket.s3_bucket.id

  depends_on = [
    aws_s3_bucket_public_access_block.permision
  ]

  policy = jsonencode({
    Version = "2012-10-17"

    Statement = [
      {
        Sid    = "PublicRead"
        Effect = "Allow"

        Principal = "*"

        Action = [
          "s3:GetObject"
        ]

        Resource = "${aws_s3_bucket.s3_bucket.arn}/*"
      }
    ]
  })
}
