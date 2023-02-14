provider "aws"{
  region = "ap-south-1"
}


resource "aws_instance" "AWSInstance"{
	count = 1
        ami = "ami-0e07dcaca8a0e68"
	instance_type = "t2.micro"
	key_name = "devopsmss"
	security_groups = ["launch-wizard-2"]
	tags = {
	 Name = "tomcatservers"
	}
}


