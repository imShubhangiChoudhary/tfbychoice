#provider

provider "aws" { 
    access_key = var.aws_access_key 
    secret_key = var.aws_secret_key 
    region = var.region 
} 

resource "aws_vpc" "first_vpc" {
     count = "${var.flag == "true" ? 1 : 0 }" 
     cidr_block = var.cidr_range 
     tags = { 
         Name = "vpc-${var.region_code}-${var.project_name}" #interpolation needed here
     } 
}
 resource "aws_s3_bucket" "bucket" {
      count = "${var.flag == "false" ? 1 : 0 }" 
      bucket = "s3-${var.project_name}" 
} 