#!/usr/bin/env bash

set -e

if [ "$#" -ne 1 ]; then
    echo "Wrong number of parameters supplied. Must supply the environment name (e.g. dev). Exiting."
    exit 1
fi

ENVIRONMENT=$1

cd template
rm -rf .terraform
terraform get
terraform graph -draw-cycles | dot -Tpng > terraform-graph.png
terraform plan -var-file=../$ENVIRONMENT/terraform.tfvars
