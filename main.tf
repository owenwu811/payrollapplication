module "uk_payroll" {
	source = "../payroll-app" #child module we are calling from 
	app_region = "us-west-1"
	ami = "ami-00569e54da628d17c"
	

}
