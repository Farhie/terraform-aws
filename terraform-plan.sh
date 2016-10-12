#!/usr/bin/env bash

set -e

ENVIRONMENT=$1

cd template
rm -rf .terraform
terraform get
terraform graph -draw-cycles | dot -Tpng > terraform-graph.png
terraform plan -var-file=../$ENVIRONMENT/terraform.tfvars
