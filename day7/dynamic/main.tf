provider "aws"{
	region = "ap-south-1"
}

module "ec2" {

	source = "./modules/ec2"
	
	ami = "ami-0f559c3642608c138"
	instance_type = "t3.small"
	
	ports = ["22","80", "443"]
}

