#!/usr/bin/env bash

# export TERRAFORM_WORKSPACE=jason-local-farm-runner
export TF_STATE_BUCKET="eric-bucket-jenkins" # update your details
export TF_STATE_OBJECT_KEY="serverless-jenkins-eric.tfstate" # update your details
export TF_LOCK_DB="eric-lock-DB" # update your details
export AWS_REGION="ap-southeast-1" # update your details

PRIVATE_SUBNETS='["subnet-0e1f40b9dccd6cb9e", "subnet-04cb04ada9b8b5542"]' # update your details
PUBLIC_SUBNETS='["subnet-07b0b0052f27b0392", "subnet-0634bad88e263ba4e"]' # update your details
VPC_ID="vpc-01fe0a8b19766ddf4" # update your details

export TF_VAR_route53_create_alias="false"
export TF_VAR_route53_zone_id="Z09415593QJ4O9LKNJU1N" # update your details
export TF_VAR_route53_domain_name="dont-click.click" # update your details
# export TF_VAR_jenkins_admin_password="xxx"

export TF_VAR_vpc_id=${VPC_ID}
export TF_VAR_efs_subnet_ids=${PRIVATE_SUBNETS}
export TF_VAR_jenkins_controller_subnet_ids=${PRIVATE_SUBNETS}
export TF_VAR_alb_subnet_ids=${PUBLIC_SUBNETS}
