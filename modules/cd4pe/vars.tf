#--------------------------------------------------------------
# This module creates the puppet master resources
#--------------------------------------------------------------

#--------------------------------------------------------------
# Puppet Master Variables
#--------------------------------------------------------------
variable "name"             { default = "cd4pe"}
variable "pridomain"        { default = "puppet.vm" }
variable "pubdomain"        { default = "aws.tsedemos.com" }

variable "ami"              {}
variable "subnet_id"        {}
variable "sshkey"           {}
variable "prefix"           {}
variable "user_name"        {}
variable "lifetime"         {}
variable "puppet_name"      {}
variable "pp_environment"   {}
variable "pp_application"   {}
variable "puppet_ip"        {}
variable "instance_type"    {}
variable "pp_role"          {}


