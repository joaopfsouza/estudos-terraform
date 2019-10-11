output "bucket" {
  value = "${module.bucket.name}"
}

output "bucket_object" {
  value = "${module.bucket.object}"
}

output "bucket2" {
  value = "${module.bucket2.name}"
}
