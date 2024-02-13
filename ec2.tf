provider "aws" {
  
  }



resource "aws_instance" "webcode" {
  ami           = "ami-0dcc1e21636832c5d"
  instance_type = "t2.micro"
  key_name      = "full"
  tags = {
    name = "try"
  }

}
