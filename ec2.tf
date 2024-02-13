provider "aws" {
  
  }

resource "aws_instance" "webcode" {
  ami           = "ami-03f4878755434977f"
  instance_type = "t2.micro"
  key_name      = "full"
  tags = {
    name = "try"
  }

}
