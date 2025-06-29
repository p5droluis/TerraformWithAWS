resource "aws_s3_bucket" "mytfbucket" {
  bucket = "tf-lab-bucket-20250628"
  tags = {
    Environment = "Lab"
  }
}