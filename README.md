Terraform EC2 Deployment

This directory contains the Terraform configuration for launching an EC2 instance on AWS.

Files and Structure

main.tf: This file contains the main Terraform code to create an EC2 instance in AWS. It references the module located in the module-ec2 folder.

module-ec2/: This folder contains a set of Terraform configuration files that define a reusable module for creating an EC2 instance in AWS. The module can be used independently or as part of a larger infrastructure setup.

Usage

Initialize Terraform: Run terraform init to initialize the directory and download any necessary provider plugins and module dependencies.

Apply the Configuration: Run terraform apply to launch the EC2 instance as specified in main.tf. Terraform will use the module configuration in module-ec2 to set up the instance.

Clean Up: Run terraform destroy to remove the created EC2 instance and any other resources defined in this setup.
