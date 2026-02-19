# 🚀 30-Day DevOps Challenge: Days 1-3

> **Building Production-Grade Cloud Infrastructure with Terraform & AWS**  
> 📅 **Progress:** Day 3/30 Complete  
> ☁️ **Cloud Provider:** AWS (Free Tier)  
> 🛠️ **Tools:** Terraform, AWS CLI, CloudWatch, Secrets Manager, Auto Scaling  
> 📝 **Status:** ✅ Active

[![Status](https://img.shields.io/badge/Status-In%20Progress-green)](https://github.com/yourusername/devops-30day-challenge)
[![Days Completed](https://img.shields.io/badge/Days%20Completed-3-blue)](https://github.com/yourusername/devops-30day-challenge)
[![License](https://img.shields.io/badge/License-MIT-yellow)](LICENSE)

---

## 📑 Table of Contents
- [Project Overview](#-project-overview)
- [Progress Tracker](#-progress-tracker)
- [Architecture Overview](#-architecture-overview)
- [Project Structure](#-project-structure)
- [Prerequisites](#-prerequisites)
- [Deployment Guide](#-deployment-guide)
- [Daily Breakdown](#-daily-breakdown)
  - [Day 1: Infrastructure as Code](#day-1-infrastructure-as-code)
  - [Day 2: Secure Secrets Management](#day-2-secure-secrets-management)
  - [Day 3: Health Checks & Auto-Healing](#day-3-health-checks--auto-healing)
- [Challenges & Solutions](#-challenges--solutions)
- [Security & Best Practices](#-security--best-practices)
- [Cost Estimate](#-cost-estimate)
- [Screenshots](#-screenshots)
- [Links & Contact](#-links--contact)

---

## 🎯 Project Overview

This repository documents my journey through a **30-Day DevOps Mastery Challenge**. The goal is to build, secure, monitor, and automate cloud infrastructure using industry-standard tools.

**Current Focus (Days 1-3):**
- **Foundation:** Infrastructure as Code (IaC) with Terraform
- **Security:** Secure Secrets Management with AWS Secrets Manager
- **Reliability:** Health Checks, Monitoring, and Auto-Healing

This project demonstrates how to provision resources programmatically while adhering to security best practices (no hardcoded secrets) and operational excellence (auto-recovery).

---

## 📈 Progress Tracker

| Day | Topic | Status | Technologies |
|-----|-------|--------|--------------|
| 1 | Infrastructure as Code (IaC) | ✅ Complete | Terraform, AWS S3 |
| 2 | Secure Secrets Management | ✅ Complete | AWS Secrets Manager, IAM |
| 3 | Health Checks & Auto-Healing | ✅ Complete | EC2, CloudWatch, SNS, ASG |
| 4 | Logging & Centralized Monitoring | ⏳ Upcoming | CloudWatch Logs |
| 5 | Multi-Environment Deployment | ⏳ Upcoming | Terraform Workspaces |
| ... | ... | ... | ... |
| 30 | Portfolio Showcase | ⏳ Upcoming | GitHub Pages, S3 |

---

## 🏗️ Architecture Overview

```mermaid
graph TD
    A[Terraform CLI] -->|Applies| B(AWS Cloud)
    B --> C[S3 Bucket (Versioned)]
    B --> D[Secrets Manager]
    B --> E[EC2 Instance (Web Server)]
    E -->|Sends Metrics| F[CloudWatch Alarms]
    F -->|Triggers| G[SNS Topic]
    F -->|Triggers| H[Auto Scaling Group]
    H -->|Replaces| E