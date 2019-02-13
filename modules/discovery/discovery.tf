#--------------------------------------------------------------
# Resources: Module Instance Build
#--------------------------------------------------------------

data "template_file" "init" {
  template = "${file("modules/discovery/bootstrap/bootstrap_discovery_pa.tpl")}"

  vars {
    puppet_name    = "${var.puppet_name}"
    puppet_ip      = "${var.puppet_ip}"
    puppet_fqdn    = "${var.puppet_name}.${var.pridomain}"
    pp_role        = "${var.pp_role}"
    pp_application = "${var.pp_application}"
    pp_environment = "${var.pp_environment}"
    name           = "${var.name}"
    domain         = "${var.pridomain}"
  }
}

data "aws_route53_zone" "discovery" {
  name = "${var.pubdomain}"
}

resource "aws_route53_record" "discovery" {
  zone_id = "${data.aws_route53_zone.discovery.zone_id}"
  name    = "${var.name}"
  type    = "A"
  ttl     = "300"
  records = ["${aws_instance.discovery.public_ip}"]
}

resource "aws_instance" "discovery" {
  ami                         = "${var.ami}"
  instance_type               = "${var.instance_type}"
  associate_public_ip_address = "true"
  subnet_id                   = "${var.subnet_id}"
  key_name                    = "${var.sshkey}"

  tags {
    Name             = "${var.name}.${var.pridomain}"
    department       = "puppetizelive"
    project          = "puppetizelive"
    created_by       = "${var.user_name}"
    termination_date = "2020-06-01T19:59:02.539657+00:00"
  }

  user_data = "${data.template_file.init.rendered}"
}
