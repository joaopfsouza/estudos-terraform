output "id" {
  value = "${aws_instance.web.id}"
}

output "ami" {
  value = "${aws_instance.web.ami}"
}

output "data_ami" {
  value = "${data.aws_ami.ubuntu.id}"
}


output "arn" {
  value = "${aws_instance.web.arn}"
}



