
provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIATIP3WBBILLRY4ZLP"
  secret_key = "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"
}

resource "aws_instance" "webcode" {
  ami           = "ami-03f4878755434977f"
  instance_type = "t2.micro"
  key_name      = "full"
  user_data = " << EOF
		#! /bin/bash
                sudo apt-get update
		sudo apt-get install -y apache2
		sudo systemctl start apache2
		sudo systemctl enable apache2
		echo "<h1>Deployed via Terraform</h1>" | sudo tee /var/www/html/index.html
	EOF"
 

  tags = {
    name = "great"
  }

}
