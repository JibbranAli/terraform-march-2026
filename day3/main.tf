provider "aws"{
	region = var.region	
}


resource "aws_instance" "server"{

	ami = var.ami
	instance_type= var.instance_type
	tags = {
		Name = var.name
	}
  lifecycle {
  create_before_destroy =  true

}

}

