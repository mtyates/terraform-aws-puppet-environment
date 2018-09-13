#--------------------------------------------------------------
# This module creates the cd4pe resources
#--------------------------------------------------------------

#--------------------------------------------------------------
# Resources: Build cd4pe Configuration
#--------------------------------------------------------------
data "template_file" "init" {
  template = "${file("modules/cd4pe/bootstrap/bootstrap_pe.tpl")}"

  vars {
    master_name   = "${var.name}"
    master_fqdn   = "${var.name}.${var.pridomain}"
    name          = "${var.name}"
  }
}

data "aws_route53_zone" "cd4pe" {
  name = "${var.pubdomain}"
}

resource "aws_route53_record" "cd4pe" {
  zone_id = "${data.aws_route53_zone.cd4pe.zone_id}"
  name    = "${var.name}.${var.pubdomain}"
  type    = "A"
  ttl     = "300"
  records = ["${aws_instance.cd4pe.public_ip}"]
}

resource "aws_instance" "cd4pe" {
  ami                         = "${var.ami}"
  instance_type               = "m4.large"
  associate_public_ip_address = "true"
  subnet_id                   = "${var.subnet_id}"
  key_name                    = "${var.sshkey}"

  tags {
    Name             = "${var.name}.${var.pridomain}"
    department       = "tse"
    project          = "Demo"
    created_by       = "${var.user_name}"
    termination_date = "2020-06-01T19:59:02.539657+00:00"
  }

  user_data = "${data.template_file.init.rendered}"
}
