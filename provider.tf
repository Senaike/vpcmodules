terraform {
 required_providers {
  aws = {
    source = "hashicorp/aws"
    version = "5.16.1"
  }
 }
 user_data = <<-EOF
      #!/bin/sh
      sudo apt-get update
      sudo apt install -y apache2
      sudo systemctl status apache2
      sudo systemctl start apache2
      sudo chown -R $USER:$USER /var/www/html
      sudo echo "<html><body><h1>Hello this custom page built with Terraform User Data</h1></body></html>" > /var/www/html/index.html
      EOF
}
provider "aws" {
    region = "us-east-1"
}
