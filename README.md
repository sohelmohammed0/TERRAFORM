# Terraform Setup for VPC, Subnet, and EC2

This guide walks you through creating a Virtual Private Cloud (VPC), a Subnet, and an EC2 instance using Terraform. We'll ensure adherence to best practices and include all essential outputs, including the SSH command for accessing the instance.

---

## Prerequisites

Before you begin, ensure you have the following:

1. **Terraform Installed:** Download and install Terraform from the [official website](https://www.terraform.io/downloads.html).
2. **AWS Account:** An active AWS account with sufficient permissions to create resources.
3. **AWS CLI:** Installed and configured with your access and secret keys. Configure using:
   ```bash
   aws configure
   ```
4. **Key Pair:** An existing AWS key pair for SSH access to the EC2 instance. Ensure the `keyname.pem` file is available in your current directory.

**Important:** Add the `keyname.pem` file to your `.gitignore` file to prevent it from being committed to the repository and keep it secure.

---

## Getting Started

To simplify the process, you can clone the pre-configured Terraform repository and use it directly. The repository contains all necessary files and configurations to deploy a VPC, Subnet, and EC2 instance.

### Clone the Repository

```bash
git clone https://github.com/sohelmohammed0/TERRAFORM
cd TERRAFORM/VPC_EC2
```

---

## Steps to Deploy

1. **Initialize Terraform:**
   Run `terraform init` to initialize the working directory.

2. **Plan and Apply:**
   Execute `terraform plan` to preview changes, and then `terraform apply -var-file="terraform.tfvars"` to deploy resources.

3. **Retrieve Outputs:**
   After deployment, Terraform will display outputs, including the SSH command for accessing the EC2 instance. For your convenience, use this command directly to log in.

---

## SSH into the EC2 Instance

To log in to the EC2 instance, ensure the `keyname.pem` file is in your current directory. Use the SSH command provided as part of the Terraform outputs:

```bash
ssh -i "keyname.pem" username@<instance_public_ip>
```

---

## Best Practices

1. **Secure Your Key Pair:** Ensure your `.pem` file is not publicly accessible. Adjust permissions using:
   ```bash
   chmod 400 "<keyname>.pem"
   ```
2. **Add Key to .gitignore:** To avoid accidentally committing the key file to your repository, add `keyname.pem` to your `.gitignore` file.
3. **Use State Management:** Configure remote state storage for better collaboration.
4. **Tag Resources:** Tag all resources for easy identification.
5. **Version Control:** Store your Terraform files in a Git repository.

---

## Cleanup

To avoid unnecessary charges, destroy the resources when no longer needed:

```bash
terraform destroy -var-file="terraform.tfvars"
```

---

This guide provides a clear and beginner-friendly explanation of creating VPC, Subnet, and EC2 instance using Terraform. Clone the repository, follow the steps carefully, and feel free to experiment with configurations!
