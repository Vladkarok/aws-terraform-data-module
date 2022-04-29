# AWS data module (for usage with Terragrunt)

When using community modules in terragrunt, usually there is no convenient way to use `data` resources.  
Here is module for for exporting latest Ubuntu 20.04 LTS AMI ID and Amazon Linux 2 AMI ID. Also it exports Route53 zone ID.

## Usage

Will be soon...

## Resources
| Name | Type |
|------|------|
| [Data Source: aws_ami](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="domain"></a> [domain](#domain) | Domain name which will be used for Route53 zone | string | | true |

## Outputs

| Name | Description |
|------|------------|
| <a name="latest_ubuntu_ami_id"></a> [latest_ubuntu_ami_id](#latest_ubuntu_ami_id) | Latest Ubuntu 20.04 LTS AMI ID |
| <a name="latest_amazon_linux_2_ami_id"></a> [latest_amazon_linux_2_ami_id](#latest_amazon_linux_2_ami_id) | Latest Amazon Linux 2 AMI ID |