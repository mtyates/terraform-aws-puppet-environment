#--------------------------------------------------------------
# Module Variables
#--------------------------------------------------------------
variable "name"           { default = "cd4pe"}
variable "pridomain"      { default = "puppet.vm" }
variable "pubdomain"      { default = ".tsedemos.com" }
variable "ami"            {}
variable "subnet_id"      {}
variable "sshkey"         {}
variable "puppet_name"    {}
variable "puppet_ip"      {}
variable "pp_role"        { default = "role::discovery"}
variable "pp_application" {}
variable "pp_environment" {}
variable "prefix"         {}
variable "user_name"      {}
variable "instance_type"  {}
variable "lifetime"       {}