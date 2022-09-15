#!/usr/bin/env bash

# export TERRAFORM_WORKSPACE=jason-local-farm-runner
export TF_STATE_BUCKET="eric-bucket-jenkins" # update your details
export TF_STATE_OBJECT_KEY="serverless-jenkins-eric.tfstate" # update your details
export TF_LOCK_DB="eric-lock-DB" # update your details
export AWS_REGION="ap-southeast-1" # update your details

PRIVATE_SUBNETS='["subnet-03c90a99e121ee5dc", "subnet-07aeb417b79e43dd2"]' # update your details
PUBLIC_SUBNETS='["subnet-0ec38a7279ff0776f", "subnet-037f86b9d46bafca0"]' # update your details
VPC_ID="vpc-097e92b9b810a18de" # update your details

export TF_VAR_route53_create_alias="false"
export TF_VAR_route53_zone_id="Z09415593QJ4O9LKNJU1N" # update your details
export TF_VAR_route53_domain_name="dont-click.click" # update your details
# export TF_VAR_jenkins_admin_password="xxx"

export TF_VAR_vpc_id=${VPC_ID}
export TF_VAR_efs_subnet_ids=${PRIVATE_SUBNETS}
export TF_VAR_jenkins_controller_subnet_ids=${PRIVATE_SUBNETS}
export TF_VAR_alb_subnet_ids=${PUBLIC_SUBNETS}
