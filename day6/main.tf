resource "aws_instance" "myec2" {

	ami = "ami-0f559c3642608c138"
	instance_type = var.instance_type
	tags = {
    
	Name = "${var.instance_name}-${terraform.workspace}"
  Environment = var.env
		
}



}
