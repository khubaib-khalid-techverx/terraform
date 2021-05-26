data "aws_ip_ranges" "ap_south_ip_range" {
  regions = ["ap-south-1","ap-southeast-1"]
  services = ["ec2"]
}

resource "aws_security_group" "sg_custom_ap_south" {
  name = "sg_custom_ap_south"
  ingress {
      from_port = "443"
      to_port = "443"
      protocol = "tcp"
      cidr_blocks = data.aws_ip_ranges.ap_south_ip_range.cidr_blocks
  }

  tags = {
    CreateDate = data.aws_ip_ranges.ap_south_ip_range.create_date
    SyncToken = data.aws_ip_ranges.ap_south_ip_range.sync_token
  }
}