resource "aws_instance" "ec2" {
	ami = var.ami
	instance_type = "t2.medium"
	tags = {
		Name = "${var.app_region}-ec2"
	}
	depends_on = [ aws_s3_bucket.bucket1, aws_dynamodb_table.table1 ]

}


