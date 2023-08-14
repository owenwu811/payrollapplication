module "uk_payroll" {
	source = "../payroll-app" #child module we are calling from 
	app_region = var.app_region
	ami = var.ami
}
