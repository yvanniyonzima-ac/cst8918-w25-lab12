# CST8918-W25-Lab12

## Team Members
- Simar Singh (sing1883) [GitHub Profile](https://github.com/supersuper2)
- Abdulrafay Mohammed (abdulRafay2325) [GitHub Profile](https://github.com/AbdulRafay2325)
- Yvanvictorie Niyonzimanshuti (yvanniyonzima-ac) [GitHub Profile](https://github.com/yvanniyonzima-ac)


# Deployment steps

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
