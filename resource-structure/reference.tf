provider "aws" {
    region = 
    access_key = 
    secret_key = 
}
resource "aws_instance" "myec2" {
    ami = "ami-0cff7528ff583bf9a"
    instance_type = "t2.micro"
}

resource "aws_eip" "lb" {
    vpc = true
}

resource "aws_eip_association" "eip_assoc" {
    instance_id = aws_instance.myec2.instance_id
    allocation_id = aws_eip.lb.id
    // referencing myec2 instance attributes to create eip association resource
}

resource "aws_security_group" "allow_tls" {
    name = "demo-security-group"

    ingress {
        from_port        = 443
        to_port          = 443
        protocol         = "-1"
        cidr_blocks      = ["${aws_eip.lb.public_ip}/32"]
    }
}