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
