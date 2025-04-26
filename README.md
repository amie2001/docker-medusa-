# 🚀 Deploying Medusa Backend on AWS ECS Fargate using Terraform and GitHub Actions

## 📚 Project Overview

This project demonstrates how to deploy the **Medusa** open-source headless commerce backend on **AWS ECS Fargate** using **Terraform** for infrastructure provisioning. A **CI/CD pipeline** using **GitHub Actions** automates the process of building and pushing the Docker image to **Docker Hub** and then deploying the image to **AWS ECS Fargate**.

---

## 🔥 Key Features
- **CI/CD pipeline in GitHub Actions** for building, testing, and deploying the Medusa backend.
- **Terraform** provisions the AWS infrastructure (ECS Fargate, VPC, Subnets, etc.).
- **Docker Hub** stores the Docker image of the Medusa backend.
- **AWS ECS Fargate** runs the Medusa backend container from Docker Hub.

---

## 🛠️ Technologies Used
- **Terraform** for Infrastructure as Code (IaC).
- **GitHub Actions** for CI/CD automation.
- **Docker** for containerizing the Medusa backend.
- **Docker Hub** for storing the Docker image.
- **AWS ECS Fargate** for serverless container deployment.

---

## 🚀 How it Works

### 1. **Terraform Infrastructure Provisioning**  
   Terraform provisions the necessary AWS resources to deploy the Medusa backend:
   - **VPC** and **subnets** for networking.
   - **ECS Cluster** and **Fargate Task** to run the container.
   - **IAM roles** for ECS task execution.
   - **ECS Service** to run and manage the Medusa backend container.
   
   (![image](https://github.com/user-attachments/assets/cf186c03-ac42-425c-a9d4-637aa1dfab9b)
)  
  

### 2. **CI Pipeline in GitHub Actions**  
   The **CI pipeline** in GitHub Actions automates the following:
   - **Build the Docker image** using the `Dockerfile`.
   - **Push the image to Docker Hub** to make it available for deployment.

   
   ![image](https://github.com/user-attachments/assets/994404c1-6092-4837-9792-0d5714c2f944)


### 3. **Continuous Delivery (CD) Pipeline**  
   The **CD pipeline** automates the process of **deploying the Docker image** stored in Docker Hub to **AWS ECS Fargate**. After the Docker image is pushed to Docker Hub via the CI pipeline, Terraform provisions the ECS service to use this image and deploy it to the cloud.

   ![image](https://github.com/user-attachments/assets/07fa0eaa-25a0-44da-b670-635b76a59c46)



### 4. **Deploying Medusa Backend on AWS ECS Fargate**  
   The **Medusa backend** is deployed to **AWS ECS Fargate** using the image from **Docker Hub**. The deployment is managed by **Terraform**.

   ![image](https://github.com/user-attachments/assets/37b7efa9-5e70-483a-b257-7fcfb08c95fc)




### 5. **Accessing the Medusa Backend**  
   The **Medusa backend** is now live and can be accessed via the public IP of the ECS task. The backend is accessible via port `9000`.

   ![image](https://github.com/user-attachments/assets/542da64b-82ef-4d8a-b632-5498b40dad0b)


---
## 📑 Setup and Installation

### Step 1: Set Up GitHub Secrets  
In your GitHub repository (`Settings > Secrets and variables > Actions`), add the following secrets:
- **DOCKERHUB_USERNAME** → Your Docker Hub username
- **DOCKERHUB_TOKEN** → Your Docker Hub access token

These are used by the GitHub Actions workflow for pushing images

---

### Step 2: Install Terraform  
Install Terraform from the [official website](https://www.terraform.io/downloads.html) if it is not already installed.

---

### Step 3: Install AWS CLI  
Install the AWS Command Line Interface (CLI) from the [official AWS documentation](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html).

---

### Step 4: Configure AWS CLI  
Set up your AWS credentials locally by running:
```bash
aws configure
```
Enter your AWS Access Key, Secret Access Key, region, and output format.

---

### Step 5: Clone the Repository  
Clone the repository to your local machine:
```bash
git clone https://github.com/amie2001/docker-medusa-/tree/project
cd docker-medusa-
```

### Step 4: Apply Terraform Configuration  
Run the following Terraform commands to create the necessary AWS resources:
```bash
terraform init
terraform apply
```

### Step 5: Set Up GitHub Actions Pipeline  
Once you push your changes to the `project` branch, GitHub Actions will automatically:
- Build the Docker image.
- Push the image to Docker Hub.
- Make the image available for deployment to ECS Fargate.

---


This version explicitly calls out **CI (Continuous Integration)** and **CD (Continuous Delivery)** in the GitHub Actions pipeline context. Let me know if there’s anything else you’d like to adjust!
## 🎥 Video Walkthrough
👉 [Video link](https://drive.google.com/file/d/1veK8mLx2Qqqb4E328lnvLuNVM8HlaCyK/view?usp=sharing) 

---

## 🔗 GitHub Repository
👉 [GitHub Repo link](https://github.com/amie2001/docker-medusa-/tree/project)

---

## 🎯 Conclusion  
With this setup, the Medusa backend is deployed on **AWS ECS Fargate**, utilizing **Terraform** for infrastructure provisioning and **GitHub Actions** for continuous delivery of the Docker image.

# 🌟 Thank you for visiting!
