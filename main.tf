#provider

provider "aws" { 
    access_key = var.aws_access_key 
    secret_key = var.aws_secret_key 
    region = var.region 
} 

resource "aws_instance" "web" {
  count = "${var.flag == "false" ? 1 : 0 }"
  ami           = "ami-052cef05d01020f1d"
  instance_type = "t2.micro"
  tags = {
    Name = "App-${var.project_name}"
  }
}
 resource "aws_s3_bucket" "bucket" {
      count = "${var.flag == "true" ? 1 : 0 }" 
      bucket = "s3-${var.project_name}" 
} 
