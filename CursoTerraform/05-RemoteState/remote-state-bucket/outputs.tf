output "bucket_name" {
  value = "${module.bucket.name}"
}

output "bucket_arn" {
  value = "${module.bucket.aws_s3_bucket.id}"
}
