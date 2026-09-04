output "s3_object_url" {
  value = "https://${aws_s3_bucket.s3_bucket.bucket}.s3.us-east-1.amazonaws.com/${aws_s3_object.object.key}"
}