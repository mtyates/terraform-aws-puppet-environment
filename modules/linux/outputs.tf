#--------------------------------------------------------------
# Module Outputs
#--------------------------------------------------------------
output "linux_public_ip" {
  value = "${aws_instance.linux.*.public_ip}"
}
output "linux_hostname" {
  value = "${aws_instance.linux.*.tags.Name}"
}