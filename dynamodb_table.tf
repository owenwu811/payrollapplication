resource "aws_dynamodb_table" "table1" {
	name = "user_data"
	hash_key = "dynamodbtable"
	billing_mode = "PAY_PER_REQUEST"
	attribute {	
		name = "dynamodbtable"
		type = "N"
	}
}
