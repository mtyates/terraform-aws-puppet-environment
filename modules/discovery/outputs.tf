#--------------------------------------------------------------
# Module Outputs
#--------------------------------------------------------------
output "discovery_name" {
  value = "${aws_instance.discovery.*.private_dns}"
}

output "discovery_private_dns" {
  value = "${aws_instance.discovery.private_dns}"
}

output "discovery_public_ip" {
  value = "${aws_instance.discovery.public_ip}"
}

output "discovery_private_ip" {
  value = "${aws_instance.discovery.private_ip}"
}