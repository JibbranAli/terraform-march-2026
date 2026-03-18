terraform{
 backend "s3"{
	bucket=  "mybucket2-18032026"
	key = "mybucket/terraform.tfstate"
	region= "ap-south-1"
	dynamodb_table = "tf2-lock-table"

}

}
