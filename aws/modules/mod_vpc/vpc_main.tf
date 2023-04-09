data "aws_region" "current" {}

# Resource creation section
resource "aws_vpc" "vpc" {
  cidr_block = "${var.cidr_block}"

  tags = {
    Name    = "${var.vpc_name}"
    Owner   = "${var.owner}"
    Project = "${var.project}"
  }
}

# Writing back information to consul

resource "consul_keys" "write_kvs" {
  key {
    path  = "${format("vpcs/%s/id","${var.vpc_name}")}"
    value = "${aws_vpc.vpc.id}"
  }

  key {
    path  = "${format("vpcs/%s/cidr_block", "${var.vpc_name}")}"
    value = "${var.cidr_block}"
  }

  key {
    path  = "${format("vpcs/%s/az", "${var.vpc_name}" )}"
    value = "${format("%s%s",data.aws_region.current.name,var.az_code)}"
  }
}
