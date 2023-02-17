#We want to create a new module to deploy multiple environments of the same infrastructure. 
#An orgazaniation called flexit consulting has a prototype of a blueprint payroll software 
#that needs to be deployed in several countries. 
#Each country will have its own instance of the software deployed on aws cloud using the 
#same architecture. 
#It has a SINGLE EC2 INSTANCE WITH A CUSTOM AMI that will host the server and dynamodb nosql 
#database that will be used to store employee and payroll data. 
#The s3 bucket will be used to store documents such as paystubs and tax forms. 
#Users access the application, which is hosted on an ec2 instance. 
#This architecture dosen’t consider vpc endpoints of iam rules for these services. 
#Create a reusable terraform module, and reuse it to deploy 
#the same stack of resources in different countries. 

resource "aws_instance" "ec2" {
	ami = var.ami
	instance_type = "t2.medium"
	tags = {
		Name = "${var.app_region}-ec2"
	}
	depends_on = [ aws_s3_bucket.bucket1, aws_dynamodb_table.table1 ]

}


