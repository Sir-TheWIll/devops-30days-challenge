# 🚀 30-Day DevOps Challenge: Days 1-2

> **Building Production-Grade Cloud Infrastructure**  
> 📅 **Progress:** Day 2/30 Complete  
> ☁️ **Cloud Provider:** AWS (Free Tier)  
> 🛠️ **Tools:** Terraform, AWS CLI, AWS Secrets Manager, Git

## 🎯 Project Overview
This repository documents my journey through a **30-Day DevOps Mastery Challenge**. The goal is to build, secure, and automate cloud infrastructure using industry-standard tools.

**Current Focus:**
- **Day 1:** Infrastructure as Code (IaC) with Terraform
- **Day 2:** Secure Secrets Management with AWS Secrets Manager

This project demonstrates how to provision resources programmatically while adhering to security best practices (no hardcoded secrets!).

## 🏗️ Architecture
| Day | Component | Technology | Status |
|-----|-----------|------------|--------|
| 1 | Storage | AWS S3 Bucket | ✅ Complete |
| 1 | Versioning | S3 Versioning | ✅ Complete |
| 2 | Security | AWS Secrets Manager | ✅ Complete |
| 2 | Access Control | IAM Least Privilege | ✅ Complete |

## 📂 Project Structure
```bash
day1-terraform-iac/
├── .gitignore          # Excludes *.tfstate, .terraform/, secrets
├── main.tf             # Resource definitions (S3 Bucket)
├── variables.tf        # Input variables (Region, Bucket Name)
├── outputs.tf          # Output values (Bucket ARN, Metadata)
├── secrets.tf          # [Day 2] Secret retrieval configuration
├── README.md           # This file
└── screenshots/        # Proof of work images