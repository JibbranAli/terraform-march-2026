provider "aws" {

	region = "ap-south-1"
}

resource "aws_instance" "myserver" {

  count = var.create_instance ? 1 : 0 
  ami  = "ami-0f559c3642608c138"


  instance_type = var.is_prod == "prod" ? "t3.micro" : "t3.small"  
  tags = {

    Name = var.env == "prod" ? "Production-server" : "Dev Server"
  }
  

}
