provider "aws" {
	region="ap-south-1"
}

resource "aws_instance" "my-server"{
	 count = var.instance_count	
	 ami= var.ami_id
	 instance_type= var.instance_type
	 tags={
		Name= var.server_name

}
}