output "awsmaster" { 
  value = "${module.puppet.puppet_public_ip}" }
output "awsdiscovery" {
  value = "${module.discovery.discovery_public_ip}"
}
output "awscd4pe" {
  value = "${module.cd4pe.cd4pe_public_ip}"
}
output "linux_ip" {
  value = "${module.linux.linux_public_ip}"
}
output "linux_hostname" {
  value = "${module.linux.linux_hostname}"
}
output "windows_hostname" {
  value = "${module.windows.windows_hostname}"
}
output "windows_ip" {
  value = "${module.windows.windows_public_ip}"
}
