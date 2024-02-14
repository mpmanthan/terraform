
provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIATIP3WBBILLRY4ZLP"
  secret_key = "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"
}

resource "aws_instance" "webcode" {
  ami           = "ami-05a5bb48beb785bf1"
  instance_type = "t2.micro"
  key_name      = "full"
  user_data = "${file("install_apache.sh")}"

  tags = {
    name = "great"
  }

}
