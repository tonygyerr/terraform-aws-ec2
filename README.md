
## Module EC2

```hcl
module "ec2" {
  source = "git::git@innersource.accenture.com/faecvtm/ec2.git"
  ami                         = var.ami
  app_name                    = var.app_name
  aws_key_name                = var.aws_key_name
  associate_public_ip_address = var.associate_public_ip_address
  instance_count              = var.instance_count
  instance_type	              = var.instance_type
  network_interface           = var.network_interface
  public_subnet_ids           = var.public_subnet_ids
  subnet_id                   = var.subnet_id
  tags                        = var.tags
  vpc                         = true
  vpc_config                  = var.vpc_config 
} 
```

## Prerequisites
- Docker (for using Docker Image of dependencies)
- Git
- Terraform
- vip2adfs2aws, or aaca for authenticating against your AWS account.
- AWS Key pair for Terraform provisioning.
- AWS S3 bucket for remote terraform state file (tfstate)
- AWS Dynamo Database for tfstate table state lock 

## How to run this Module using Terraform Commands
```bash
vip2adfs2aws aws-auth --user-enterprise-id <accenture user id> --user-email <username.lastname@accenture.com> --user-aws-role-index 0 --aws-region <amazon region>
cd examples
terraform init -backend-config ../backend-config/dev.tfvars
terraform plan -var-file="../env-config/dev.tfvars"
terraform apply -var-file="../env-config/dev.tfvars" -auto-approve
terraform destroy -var-file="../env-config/dev.tfvars"
```

## How to Run this Module using Makefile Process
```bash
make auth
make get
make init
make plan
make apply
```

## Requirements

| Name | Version |
|------|---------|
| aws | ~> 2.0 |

## Providers

| Name | Version |
|------|---------|
| aws | ~> 2.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| acn\_tags | optional tags | `map(string)` | `{}` | no |
| ami | n/a | `string` | n/a | yes |
| app\_name | Application Name | `string` | `""` | no |
| app\_vol\_encryption | n/a | `string` | `"true"` | no |
| app\_vol\_size | size for app vol | `string` | `"30"` | no |
| app\_vol\_type | volume type for app | `string` | `"gp2"` | no |
| associate\_public\_ip\_address | n/a | `bool` | n/a | yes |
| aws\_key\_name | aws key name | `string` | `""` | no |
| aws\_region | ec2 region for the vpc | `string` | `""` | no |
| iam\_instance\_profile\_name | n/a | `string` | `""` | no |
| instance\_count | n/a | `string` | n/a | yes |
| instance\_type | app instance type | `string` | `"t2.micro"` | no |
| network\_interface | Network interface ID to associate with | `string` | `""` | no |
| open\_cidr | vpc cidr for subnet | `string` | `"0.0.0.0/0"` | no |
| public\_ipv4\_pool | EC2 IPv4 address pool identifier or amazon. This option is only available for VPC EIPs. | `string` | `null` | no |
| public\_subnet\_ids | list of subnet ids | `list` | `[]` | no |
| security\_groups | security groups applied to the load balancer. e.g. ["sg-ab15ebe3","sg-b012ecf8"] | `list` | `[]` | no |
| subnet\_id | n/a | `string` | n/a | yes |
| tags | optional tags | `map(string)` | n/a | yes |
| vpc | Boolean if the EIP is in a VPC or not | `bool` | `null` | no |
| vpc\_config | configuration option for vpc | `map(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| app\_ebs\_id | n/a |
| app\_ec2\_id | n/a |
| app\_sg\_id | n/a |
| id | Contains the EIP allocation ID |
| private\_ip | n/a |
| public\_dns | Public DNS associated with the Elastic IP address |
| public\_eip | Contains the public IP address |
| public\_ip | n/a |