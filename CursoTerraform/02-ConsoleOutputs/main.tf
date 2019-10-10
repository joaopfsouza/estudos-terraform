provider "aws" {
    profile="terraform"
    region="us-east-1"
}

resource "aws_s3_bucket" "bucket" {
    bucket="jax-bucket-udemy"
    acl="private"
    tags = {
        Name="My Bucket"
        Enviroment="Dev"
    }
}

resource "aws_s3_bucket_object" "object"{
    bucket = "${aws_s3_bucket.bucket.id}"
    key = "hello-world"
    source="arquivo.txt"
    etag = "${filemd5("arquivo.txt")}"

}

output "arn" {
  value = "${aws_s3_bucket.bucket.arn}"
}

output "etag" {
  value = "${aws_s3_bucket_object.object.etag}"
}


