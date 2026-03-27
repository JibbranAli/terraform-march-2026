resource "aws_security_group" "sg" {



	name= "dynamic-ec2-sg"
	dynamic "ingress" {
		for_each = var.ports
    content {

      from_port = ingress.value
      to_port = ingress.value
      protocol = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
	}


resource "aws_instance" "ec2" {
    ami = var.ami
    instance_type = var.instance_type
    
    vpc_security_group_ids = [aws_security_group.sg.id]

    tags = {
      Name = "Dynamic-Ec2"

    }
  }




