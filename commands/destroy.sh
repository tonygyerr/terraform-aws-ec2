#!/bin/bash
ENV=$1
AWS_REGION=$2
cd "$(pwd "${0}")/ec2" || exit
terraform init -backend-config "backend-config/${ENV}.tfvars"
terraform destroy -var-file="env-config/${ENV}.tfvars"