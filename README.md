# 🚀 Deploying Medusa Backend on AWS ECS Fargate using Terraform and GitHub Actions

## 📚 Project Overview
This project demonstrates using **Terraform** to deploy the [Medusa](https://medusajs.com/) open-source headless commerce backend on **AWS ECS with Fargate**.  
It also sets up a **Continuous Deployment (CD)** pipeline using **GitHub Actions** to automate deployments on code changes.

---

## 🔥 Key Features
- Infrastructure provisioning using **Terraform**
- Deploy **Medusa backend** container on **AWS ECS Fargate**
- Push container image to **AWS ECR**
- Set up **GitHub Actions** for automatic build, push, and deployment
- Simple architecture without Load Balancer (direct public access using Fargate public IP)

---

## 🛠️ Technologies Used
- **Terraform** (for Infrastructure as Code)
- **AWS ECS Fargate** (to run Docker containers serverlessly)
- **AWS ECR** (Elastic Container Registry for storing images)
- **GitHub Actions** (for CI/CD)
- **Docker** (containerizing Medusa backend) 

---

## 🚀 How it Works
1. **Terraform** provisions:
   - VPC
   - Subnets (public)
   - Internet Gateway
   - ECS Cluster and Fargate Task
   - ECR Repository
2. **Docker** builds the Medusa backend image and pushes to **ECR**.
3. **GitHub Actions** automatically:
   - Builds Docker image
   - Pushes image to ECR
   - Updates ECS service
4. **Medusa backend** runs with a **public IP** (no ALB), and can be accessed via ECS task IP directly.

---

## 🎥 Video Walkthrough
👉 [Video link](https://drive.google.com/file/d/1veK8mLx2Qqqb4E328lnvLuNVM8HlaCyK/view?usp=sharing) 

---

## 🔗 GitHub Repository
👉 [GitHub Repo link](https://github.com/amie2001/docker-medusa-/tree/project)

---


# 🌟 Thank you for visiting!
