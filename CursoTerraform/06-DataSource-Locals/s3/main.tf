provider "aws" {
    profile="${var.profile}"
    region="${var.region}"
}


data "terraform_remote_state" "web"{
    backend= "s3"
    config={
        bucket="jax-remote-state-dev"
        key="ec2/ec2.tfstate"
        region="${var.region}"
    }
    
}

locals {
  instan_id = "${data.terraform_remote_state.web.id}" 
  ami = "${data.terraform_remote_state.web.ami}" 
  arn = "${data.terraform_remote_state.web.arn}"
}


module "bucket"{
    source="../../04-Modules/S3"
    name="${var.bucket_name}-${var.env}"
    versioning=true

    tag ={
        "Env"="${var.env}"
        "Name" = "Terraform Remote State"
    }
    object_key="instances/instances-${local.ami}.txt"
    object_source="output.txt"
}

