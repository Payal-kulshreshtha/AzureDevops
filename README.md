## Step 1: Create the Terraform repository structure
1. Create Repository Structure
2. Create .gitignore
3. Create the environment's main.tf (DEV -> QA -> PreProd -> PROD)
4. Create variables.tf (DEV -> QA -> PreProd -> PROD)
5. Create terraform.tfvars (DEV -> QA -> PreProd -> PROD)
6. Cretae outputs.tf (DEV -> QA -> PreProd -> PROD)
7. Don't Create Terraform Modules yet
8. Verify Terraform for each env follow steps:
    1. cd into the directory
    2. terraform init   
    3. terraform fmt -recursive
    4. terraform validate
    5. terraform plan
    
9. Commit this to github



## Step 2: Create reusable AKS/network/ACR Terraform modules
### Prerequisites
1. Azure Resource Group for shared resources
2. Azure Storage Account for Terraform state
3. Shared Azure Container Registry (ACR)
4. GitHub → Azure OIDC identity


## Step 3: Create DEV environment
## Step 4: Create QA/PRE-PROD/PROD environments
## Step 5: Configure Azure remote Terraform state
## Step 6: Configure GitHub OIDC → Azure
## Step 7: Create GitHub CI pipeline
## Step 8: Create ACR image build/push pipeline
## Step 9: Create Helm environment values
## Step 10: Create CD pipeline with GitHub environment approvals
## Step 11: Add Key Vault + AKS workload identity
## Step 12: Add Prometheus/Grafana monitoring