# Azure Appservice terraform deployment

### Objective

Deploy Azure Appservice using terraform script
Deploying Azure Appservice from azure portal can take long time. To automate this process, I have written terraform script.

You can setup terraform in your local computer and run this script to deploy Azure appservice.

### Steps to setup code in local computer

Setup Terraform

    1. Install terraform based on your OS. 

```bash
https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli 
```
    

    2. Clone the repo
```bash
Git clone https://github.com/hemanthkanduri/dimiour-terraform-challenge.git
```


    3. Now run terraform init to setup everything
```bash
terraform init
```
### Configure Environment tfvars file 

There is a file called env.tfvars , it will have all the environment variables. You can configure your AKS cluster based on these values.

For authentication to Azure I am using Service principle 

```bash
•	subscription_id = "xxx.xxx.xxx.xxx"
•	client_id       = "xxx.xxx.xxx.xxx"
•	client_secret   = "xxx.xxx.xxx.xxx"
•	tenant_id       = "xxx.xxx.xxx.xxx"
```

These values will authenticate to azure.

Note – Make sure the SP has required permission (Contributor Role) to make deployments in resource group


### Terraform Commands to deploy script

```bash
•	terraform init 
•	terraform plan -var-file=”env.tfvars”
•	terrfarom apply -var-file=”env.tfvars”
```

## Features

- Reuseable
- Easily configurabale
- Detailed