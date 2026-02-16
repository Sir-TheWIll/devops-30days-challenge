# 🚀 Day 1: Infrastructure as Code (IaC) with Terraform

> **Part of the 30-Day DevOps Mastery Challenge**  
> 📅 **Date:** February 2026  
> ☁️ **Cloud Provider:** AWS (Free Tier)  
> 🛠️ **Tools:** Terraform, AWS CLI, Git

## 🎯 Project Overview
This project demonstrates the foundational principles of **Infrastructure as Code (IaC)** using Terraform. The goal was to provision a secure, versioned AWS S3 bucket programmatically instead of manually clicking through the AWS Console.

This setup ensures infrastructure is **repeatable, version-controlled, and auditable**—key practices for modern DevOps engineering.

## 🏗️ Architecture
- **Resource:** AWS S3 Bucket
- **Feature:** Bucket Versioning Enabled
- **Tagging Strategy:** Implemented for cost allocation and ownership tracking
- **State Management:** Local state (with `.gitignore` protection)

## 📂 Project Structure
```bash
day1-terraform-iac/
├── .gitignore          # Excludes *.tfstate and .terraform/
├── main.tf             # Resource definitions (S3 Bucket + Versioning)
├── variables.tf        # Input variables (Region, Bucket Name)
├── outputs.tf          # Output values (Bucket ARN, Name)
├── README.md           # This file
└── terraform.tfvars    # (Optional) Variable values