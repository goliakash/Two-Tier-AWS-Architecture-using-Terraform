# Two-Tier AWS Architecture using Terraform

This project demonstrates how to build a **production-style two-tier architecture on AWS** using **Terraform (Infrastructure as Code)**.  
The infrastructure provisions a secure environment where an **EC2 application server communicates with a PostgreSQL database hosted on Amazon RDS**.

The main goal of this project is to practice **real-world cloud infrastructure design**, **secure networking**, and **Terraform modular architecture**.

---

# Architecture Overview

The architecture follows a **two-tier model**:

## Application Tier
- EC2 instance deployed in a **public subnet**
- Accessible via SSH
- Acts as the application server

## Database Tier
- PostgreSQL RDS instance deployed in **private subnets**
- Not accessible from the public internet
- Only reachable from the EC2 instance

This ensures **security, network isolation, and production-style infrastructure design**.

---

# Technologies Used

- AWS (Amazon Web Services)
- Terraform
- PostgreSQL (Amazon RDS)
- AWS Secrets Manager
- Linux / SSH
- VPC Networking

---

# Infrastructure Components

The Terraform configuration provisions the following resources:

- VPC
- Public Subnet
- Multi-AZ Private Subnets
- Internet Gateway
- Route Tables
- Security Groups
- EC2 Instance
- PostgreSQL RDS Instance
- DB Subnet Group
- AWS Secrets Manager

---

The project uses a **modular Terraform design** to improve readability and maintainability.

---

# Security Best Practices Implemented

- Database deployed in **private subnets**
- No direct internet access to RDS
- Credentials managed using **AWS Secrets Manager**
- Security groups enforce **least-privilege access**
- Application and database tiers are **network isolated**

---

# Key Learning Outcomes

Through this project I gained practical experience in:

- Designing AWS networking architecture
- Implementing Infrastructure as Code using Terraform
- Structuring Terraform projects with modules
- Managing secrets securely with AWS Secrets Manager
- Debugging Terraform and AWS configuration errors
- Managing infrastructure lifecycle with `terraform apply` and `terraform destroy`

---

# Infrastructure Lifecycle

Terraform was used to manage the full lifecycle of infrastructure.

## Provision Infrastructure
 -terraform init
 -terraform plan
 -terraform apply

## Destroy Infrastructure

This ensures the infrastructure is **fully reproducible and cost-efficient**.

---

# Future Improvements

Planned enhancements to extend this project include:

- Application Load Balancer (ALB)
- Auto Scaling Group (ASG)
- Remote Terraform backend (S3 + DynamoDB)
- CI/CD pipeline integration
- Monitoring using CloudWatch

---

# Author

Akash Goli  
Cloud & DevOps Enthusiast

---

# License

This project is open source and available for learning and educational purposes.


