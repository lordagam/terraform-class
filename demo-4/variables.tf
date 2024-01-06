variable "region" {
    description = "Insert your AWS Region Code"
    default     = "eu-west-3"
}

variable "AMIS" {
    description = "choose your ami depends on region"
    type = map(string)
    default = {
        eu-west-3    = "ami-01d21b7be69801c2f"
        eu-west-1    = "ami-0905a3c97561e0b69"
        eu-central-1 = "ami-0faab6bdbac9486fb"
    }
}
