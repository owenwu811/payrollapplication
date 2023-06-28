resource "aws_s3_bucket" "bucket1" {
  bucket = "${var.app_region}-${var.bucket}"
  
  lifecycle_rule {
    id      = "log-files"
    status  = "enabled"
    
    transition {
      days          = 30
      storage_class = "GLACIER"
    }
    
    expiration {
      days = 365
    }
  }
  
  versioning {
    enabled = true
  }
}
