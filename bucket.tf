resource "aws_s3_bucket" "my-unique-bucket-name-abarasan_1234567890" {
    bucket = "my-unique-bucket-name-abarasan-1234567890"

    tags = {
        Name        = "My Unique Bucket"
        Environment = "Dev"
    }
  
}