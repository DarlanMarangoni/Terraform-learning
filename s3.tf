resource "aws_s3_bucket" "dev4" {
  bucket = "drms-dev4-bucket"

  tags = {
    Name = "drms-dev4-bucket"
  }
}