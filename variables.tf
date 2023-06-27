variable "ami" {
	type = string
}
variable "bucket" {
	default = "payrollbucket"
}
variable "app_region" {
	type = string
	default = "us-west-1"
}
