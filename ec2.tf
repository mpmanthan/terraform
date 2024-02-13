
provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIATIP3WBBILLRY4ZLP"
  secret_key = "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"
}

resource "aws_instance" "webcode" {
  ami           = "ami-03f4878755434977f"
  instance_type = "t2.micro"
  key_name      = "full"
 

  tags = {
    name = "great"
  }

}
