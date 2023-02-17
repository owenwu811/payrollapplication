resource "aws_s3_bucket" "bucket1" {
	bucket = "${var.app_region}-${var.bucket}"
}