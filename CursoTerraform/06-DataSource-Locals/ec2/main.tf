provider "aws" {
  profile="${var.profile}"
  region="${var.region}"  
}

terraform{
  backend "s3"{
    #bucket="${var.bucket}"
    #key="ec2/ec2.tfstate"
    #region="${var.region}"
  }
}
data "aws_ami" "ubuntu" {
  owners      = ["amazon"]
  most_recent = true
  name_regex  = "ubuntu"
}


resource "aws_instance" "web" {
    ami="${data.aws_ami.ubuntu.id}"
    instance_type="${var.instance_type}"
  
}
