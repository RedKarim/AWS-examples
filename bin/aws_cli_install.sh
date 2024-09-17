#! /usr/bin/env bash

# https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli
cd /workspace
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
cd $THEIA_WORKSPACE_ROOT