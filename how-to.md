# Commands to create and deploy a workspaces
## Create workspaces
```
terraform workspace new hub
terraform workspace new spoke
terraform workspace select hub
```
## Deploy workspaces
Prerequisite: [.tfvars files](#tfvars-files)
```
terraform init
terraform plan -var-file hub.tfvars
...
```

# .tfvars files
Each workspace has its own .tfvars file. For this demo, each file should have a `environment_id` variables with its value set to an azure subscription id.
```
hub.tfvars
spoke.tfvars
```
