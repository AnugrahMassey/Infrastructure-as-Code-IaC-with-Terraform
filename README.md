
# DevOps Internship - Task 4: Infrastructure as Code (IaC) with Terraform

## Overview
This repository contains the Terraform configuration files and execution logs for provisioning a local Docker container using Terraform as part of the DevOps internship task. The goal was to understand Infrastructure as Code (IaC) principles and Terraform's workflow by creating and managing a Docker container.

---

## Files Included
1. **`main.tf`**: The Terraform configuration file defining the Docker provider and resources (NGINX image and container).
2. **Execution Logs**: Screenshots and logs of the Terraform commands (`init`, `plan`, `apply`, `destroy`) and their outputs.
3. **`README.md`**: This file, explaining the task and steps.

---

## Steps Executed

### 1. **Setup Terraform Configuration**
- Defined the Docker provider (`kreuzwerker/docker`) and specified the NGINX image (`nginx:latest`) in `main.tf`.
- Created a Docker container named `devops-terraform-container` with port mapping (internal `80` to external `8080`).

### 2. **Initialized Terraform**
- Ran `terraform init` to download the Docker provider and initialize the working directory.
  ```
  terraform init
  ```
  - Output: Successfully initialized and provider plugins installed.

### 3. **Planned Infrastructure Changes**
- Ran `terraform plan` to preview the actions Terraform would take.
  ```
  terraform plan
  ```
  - Output: Plan showed 2 resources to be created (Docker image and container).

### 4. **Applied Configuration**
- Executed `terraform apply` to create the Docker container.
  ```
  terraform apply
  ```
  - Output: Container `devops-terraform-container` was created, accessible via `localhost:8080`.

### 5. **Destroyed Infrastructure**
- Ran `terraform destroy` to clean up resources.
  ```
  terraform destroy
  ```
  - Output: Container and image were successfully removed.

### 6. **State File Inspection**
- Used `terraform state list` to view managed resources.
  ```
  terraform state list
  ```
  - Output: Listed resources before destruction.

---

## Screenshots
- **Localhost:8080**: Verified NGINX default page.
  
  ![Terraformport8080](https://github.com/user-attachments/assets/6bc0bb2a-c3a8-455b-a374-6abc06917551)

---

## Key Learnings
- **IaC**: Infrastructure as Code automates provisioning using declarative configurations.
- **Terraform Workflow**: `init` → `plan` → `apply` → `destroy`.
- **State File**: Tracks resource metadata and dependencies.
- **Providers**: Plugins (e.g., Docker) interface with APIs to manage resources.

---
 
### **Conclusion**  

This task provided hands-on experience with **Infrastructure as Code (IaC)** using Terraform to provision and manage a Docker container. By writing the `main.tf` configuration, executing Terraform commands (`init`, `plan`, `apply`, `destroy`), and analyzing the state file, I gained a deeper understanding of key IaC principles, including:  

- **Automation & Repeatability**: Terraform enables consistent, version-controlled infrastructure deployment.  
- **Declarative Workflow**: Defining infrastructure as code simplifies management and reduces manual errors.  
- **State Management**: The `terraform.tfstate` file ensures accurate tracking of resources.  
- **Provider Ecosystem**: Terraform’s extensibility (e.g., Docker, AWS) supports multi-platform provisioning.  

This exercise reinforced the importance of IaC in modern DevOps practices, emphasizing efficiency, collaboration, and scalability. Moving forward, I aim to explore advanced Terraform features like **modules, workspaces, and remote backends** to further streamline infrastructure management.  

---

