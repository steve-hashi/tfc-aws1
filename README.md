# Terraform AWS EC2 Provisioning

This project provides a Terraform configuration to provision an AWS EC2 instance.

## Prerequisites

- An AWS account
- Terraform installed on your local machine
- AWS CLI configured with appropriate permissions

## Project Structure

```
├── main.tf          # Main configuration for provisioning the EC2 instance
├── variables.tf     # Input variables for the Terraform configuration
├── outputs.tf       # Output values after infrastructure creation
├── provider.tf      # Provider configuration for AWS
└── README.md        # Project documentation
```

## Getting Started

1. **Clone the repository** (if applicable):
   ```bash
   git clone <repository-url>
   cd terraform-aws-ec2
   ```

2. **Initialize Terraform**:
   Run the following command to initialize the Terraform configuration:
   ```bash
   terraform init
   ```

3. **Configure Variables**:
   Edit the `variables.tf` file to set your desired instance type and AMI ID, or provide them via command line or a `.tfvars` file.

4. **Plan the Deployment**:
   Generate an execution plan with:
   ```bash
   terraform plan
   ```

5. **Apply the Configuration**:
   To create the EC2 instance, run:
   ```bash
   terraform apply
   ```

6. **Accessing the EC2 Instance**:
   After the instance is created, you can find the public IP address in the output. Use SSH to connect to the instance.

7. **Destroying the Infrastructure**:
   To remove the EC2 instance and associated resources, run:
   ```bash
   terraform destroy
   ```

## Notes

- Ensure that your AWS credentials are configured properly.
- Modify security group settings in `main.tf` as needed to allow access to your instance.
- Review the AWS pricing for EC2 instances to understand potential costs.