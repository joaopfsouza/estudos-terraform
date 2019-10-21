variable "profile"{
    default="terraform"
}

variable "region" {
  default="us-east-1"
}
variable "ami"{
    default="ami-0b69ea66ff7391e80"
}

variable "instance_type"{
    default="t2.micro"
}

variable "bucket" {
  default="jax-remote-state"
}

variable "env" {
  default="dev"
}



