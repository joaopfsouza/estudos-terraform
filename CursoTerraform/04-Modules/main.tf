provider "aws" {
  profile = "${var.profile}"
  region  = "${var.region}"
}

resource "random_id" "random_number" {
  byte_length = 8
}

module "bucket" {
  source     = "./S3"
  name       = "${var.name}-${random_id.random_number.hex}"
  versioning = true
  tag = {
    "Name" = "Meu bucket de terraform"
  }
  create_object = true
  object_key    = "files/${random_id.random_number.dec}.txt"
  object_source = "file.txt"
}

module "bucket2" {
  source = "./S3"
  name   = "${var.name}-2-${random_id.random_number.hex}"
}