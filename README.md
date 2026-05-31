# Royal Hotel DevOps — Terraform + Ansible on AWS

One-command automation to provision a complete developer VM for the Royal Hotel project. Built as a Simplilearn DevOps Capstone Project.

![Terraform](https://img.shields.io/badge/IaC-Terraform-7B42BC)
![Ansible](https://img.shields.io/badge/Config-Ansible-EE0000)
![AWS](https://img.shields.io/badge/Cloud-AWS-FF9900)

## 🎯 What This Project Does

* Creates a VPC (`10.0.0.0/16`), public subnet, Internet Gateway, and route table in `us-east-1`
* Launches an EC2 `t3.micro` instance running Ubuntu 22.04 with a 20 GB gp3 volume
* Automatically configures the server using Ansible:

  * Docker 29
  * OpenJDK 17
  * Node.js 12
  * Git
* Creates a `devuser` account with sudo and Docker access

## 📂 Project Structure

```text
royal-hotel-devops/
├── terraform/
│   ├── main.tf
│   ├── variables.tf
│   └── outputs.tf
├── ansible/
│   └── playbook.yml
├── jenkins/
│   └── Jenkinsfile
├── scripts/
└── screenshots/
```

## 🚀 Quick Start

### 1. Configure AWS Credentials

```bash
aws configure
```

### 2. Deploy Infrastructure

```bash
cd terraform
terraform init
terraform apply -auto-approve
```

### 3. Connect to the EC2 Instance

```bash
ssh -i ~/.ssh/royal-hotel-dev-key ubuntu@<PUBLIC_IP>
```

### 4. Verify Installation

```bash
docker --version
java -version
git --version
```

## 📸 Execution Proof

### AWS Authentication

![AWS Authentication](screenshots/AWS%20CLI%20Authentication.png)

### Terraform Plan

![Terraform Plan](screenshots/Terraform%20Plan.png)

### Terraform Apply Complete

![Terraform Apply](screenshots/Terraform%20Apply%20Complete.png)

### EC2 Instance Running

![EC2 Running](screenshots/AWS%20Console%20%E2%80%93%20EC2%20Running.png)

### SSH Verification

![SSH Verification](screenshots/SSH%20Verification.png)

### Terraform Destroy

![Terraform Destroy](screenshots/Terraform%20Destroy.png)

## 🛠️ Challenges and Fixes

### KMS AccessDenied Error

**Issue:** AWS Academy Lab account blocked encrypted EBS volume creation.

**Resolution:** Disabled EBS encryption in Terraform configuration.

### Ansible YAML Parsing Error

**Issue:** Invalid group definition syntax.

**Resolution:**

```yaml
groups: "sudo,docker"
```

### Infrastructure and Configuration Automation

**Issue:** Manual configuration after provisioning.

**Resolution:** Implemented Terraform `null_resource` to trigger Ansible automatically after EC2 creation.

## 🧹 Cleanup

Destroy all created resources:

```bash
terraform destroy -auto-approve
```

## 🏗️ Technologies Used

* Terraform
* Ansible
* AWS EC2
* AWS VPC
* Ubuntu 22.04
* Docker
* OpenJDK 17
* Node.js
* Git
* Jenkins

## 👨‍💻 Author

**Arshit Choubey**
DevOps Engineer

GitHub Repository:
https://github.com/arshitchoubey18/royal-hotel-devops

---

**Built as part of the Simplilearn DevOps Capstone Project (June 2026).**
