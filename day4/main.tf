provider "aws" {
	region = var.region


}

resource  "aws_instance"  "server" {
	for_each = var.servers
  ami= "ami-0f559c3642608c138"
	instance_type= each.value
	tags = {
    Name= each.key
	}


  
}
