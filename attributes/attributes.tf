provider "aws" {
    region = "us-east-1"
    access_key = 
    secret_key =
}

resource "aws_eip" "lb" {
    vpc = true
}

output "eip" {
    value = aws_eip.lb.public_ip
}

resource "aws_s3_bucket" "mys3" {
    bucket = "attribute-demo-001"
}

output "mys3bucket" {
    value = aws_s3bucket.mys3.bucket_domain_name
}

// leaving the attribute out in the output block will print all attributes of the resource