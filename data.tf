data "aws_ami" "amazon_linux_latest" {
  owners      = ["137112412989"]
  most_recent = true
  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-5.10-hvm-*-x86_64-gp2"]
  }
}

data "aws_ami" "ubuntu_latest" {
  owners      = ["099720109477"]
  most_recent = true
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }
}

data "aws_route53_zone" "primary" {
  name = var.domain
}

#############
## Outputs ##
#############
output "latest_ubuntu_ami_id" {
  description = "Ubuntu 20.04 LTST AMI ID"
  value       = data.aws_ami.ubuntu_latest.id
}

output "latest_amazon_linux_ami_id" {
  description = "Amazon Linux 2 AMI ID"
  value       = data.aws_ami.amazon_linux_latest.id
}

output "domain" {
  description = "Route53 ZONE ID"
  value       = data.aws_route53_zone.primary.zone_id
}

###############
## Variables ##
###############
variable "domain" {
  type = string
}
