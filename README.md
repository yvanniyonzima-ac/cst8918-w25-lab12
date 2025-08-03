# CST8918-W25-Lab12

## Team Members
- Simar Singh (sing1883) [GitHub Profile](https://github.com/supersuper2)
- Abdulrafay Mohammed (abdulRafay2325) [GitHub Profile](https://github.com/AbdulRafay2325)
- Yvanvictorie Niyonzimanshuti (yvanniyonzima-ac) [GitHub Profile](https://github.com/yvanniyonzima-ac)


# Terraform Backend Deployment steps

1. Deploy the backend storage account and container for Terraform stated

```bash
# in infra/tf-backend folder
terraform plan --out=tf-backend.plan
terraform apply tf-backend.plan
```

2. Export the outputed ARM_ACCESS_KEY

```bash
# in infra/tf-backend folder
export ARM_ACCESS_KEY=$(terraform output -raw arm_access_key)
```

3. Deploy the app infrastracture

```bash
# in infra/tf-app
terraform plan --out=tf-app.plan
terraform apply tf-app.plan
```
# Azure Credentials Setup

1. You will need your Azure subscription ID and Azure tenant ID.

- Use `az account show` and part of the output will display the `id` (subscription ID) and `tenantId` fields.

To make it easier to insert these values in CLI commands, you can capture the output of the commands and assign them to shell environment variables, like this.

```bash
export subscriptionId=$(az account show --query id -o tsv)
export tenantId=$(az account show --query tenantId -o tsv)
```

You will also need the name of the resource group that you created in the previous step. You can get this with the terraform output command.

```bash
# in the infra/tf-app folder
export resourceGroupName=$(terraform output -raw resource_group_name)
```