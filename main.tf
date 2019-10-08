provider "aws" {
    #shared_credentials_file="~/.aws/credentials"
    profile="terraform-script"
    region="us-east-1"
}

resource "aws_instance" "exemplo"{
    ami="ami-0b69ea66ff7391e80"
    instance_type = "t2.micro"
}


