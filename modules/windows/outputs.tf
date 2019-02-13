#--------------------------------------------------------------
# This module creates the win server resources
#--------------------------------------------------------------
output "windows_public_ip" {
  value = "${aws_instance.windows.*.public_ip}"
}
output "windows_hostname" {
  value = "${aws_instance.windows.*.tags.Name}"
}