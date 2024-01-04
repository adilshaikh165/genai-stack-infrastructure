# Terraform Project for Deploying VMs on Google Cloud Platform (GCP)

This Terraform project allows you to deploy virtual machines (VMs) on Google Cloud Platform (GCP) using infrastructure as code (IAC). You can customize VM configurations and network settings by editing the provided variables.

## Prerequisites


Before getting started, ensure you have the following prerequisites:

1. [Terraform](https://www.terraform.io/downloads.html) installed locally.
2. Google Cloud Platform (GCP) account with appropriate permissions and a project ID.
3. GCP service account key JSON file in the project directory.

## Project Structure

- `main.tf`: Contains the Terraform configuration for creating VMs and associated resources.
- `variables.tf`: Defines the input variables used in `main.tf`.
- `providers.tf`: Specifies the GCP provider configuration.
- `output.tf`: Defines the output variables for the Terraform project.
- `dev.tfvars`: Example variable values for your development environment.
- `terraform.tfstate`: Stores the state of the infrastructure after provisioning (do not modify this file).
- `terraform.tfstate.backup`: Backup of the Terraform state file (do not modify this file).

## Download the Project

Clone this repository to your local machine:

```bash
   git clone <repository_url>
```

## Direction

* Configure your GCP credentials by setting the GOOGLE_APPLICATION_CREDENTIALS environment variable to the path of your service account key JSON file

* Customize VM and network settings by editing the dev.tfvars file or create your own .tfvars file.

* Initialize the Terraform project:
```bash
    terraform init
```

* Preview the changes that Terraform will make:
```bash
   terraform plan
```

* Deploy the VMs and associated resources:
```bash
   terraform apply 
```

* Confirm the deployment by typing `yes` when prompted or use `--auto-approve` instead.



