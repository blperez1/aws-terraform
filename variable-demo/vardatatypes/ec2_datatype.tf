provider "aws" {
    region = var.region
    access_key = var.access
    secret_key = var.secret_key
}

resource "aws_iam_user" "lb" {
    name = var.userid
    path = "/system/"
}
