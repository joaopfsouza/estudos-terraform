provider "aws" {
    profile="${var.profile}"
    region="${var.region}"
}

module "bucket"{
    source="../../04-Modules/S3"
    name="${var.bucket_name}-${var.env}"
    versioning=true

    tag ={
        "Env"="${var.env}"
        "Name" = "Terraform Remote State"
    }
}

