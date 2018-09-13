#--------------------------------------------------------------
# This module creates the puppet master resources
#--------------------------------------------------------------

output "cd4pe_name" {
  value = "${aws_instance.cd4pe.private_dns}"
}

output "cd4pe_public_ip" {
  value = "${aws_instance.cd4pe.public_ip}"
}

output "cd4pe_private_ip" {
  value = "${aws_instance.cd4pe.private_ip}"
}