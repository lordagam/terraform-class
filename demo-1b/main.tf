resource "aws_instance" "lidor-example" {
    count         = 1
    ami           = "${var.AMIS[var.region]}"
    instance_type = "t2.micro"
}

