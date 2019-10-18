provider "aws" {
  profile="${var.profile}"
  region="${var.region}"  
}

terraform{
  backend "s3"{
    bucket="${var.bucket}"
    key="ec2/ec2.tfstate"
    region="${var.region}"
  }
}
resource "aws_instance" "exemplo" {
    ami="${var.ami}"
    instance_type="${var.instance_type}"
  
}
