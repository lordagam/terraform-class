resource "aws_instance" "lidor-example" {
    count         = 5
    ami           = "ami-0faab6bdbac9486fb"
    instance_type = "t2.small"
}

