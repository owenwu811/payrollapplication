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

variable "employee_count" {
  type    = number
  default = 10
}

variable "payroll_schedule" {
  type    = string
  default = "monthly"
}

variable "region" {
	type = string
}
