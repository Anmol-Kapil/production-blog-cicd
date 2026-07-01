# CloudNative Hub - Production-Ready DevSecOps CI/CD Pipeline 🚀

## Project Scenario

```
A production-ready Spring Boot application was deployed using a complete DevSecOps CI/CD pipeline on AWS.

The objective of this project was to automate the entire software delivery lifecycle, starting from source code integration to deployment on Amazon EKS.

The pipeline integrates Jenkins for Continuous Integration and Continuous Deployment, SonarQube for code quality analysis, Trivy for security vulnerability scanning, Nexus Repository for artifact management, Docker for containerization, Terraform for Infrastructure as Code (IaC), Kubernetes (Amazon EKS) for orchestration, and Prometheus with Grafana for monitoring and visualization.

The application was customized and rebranded as CloudNative Hub to demonstrate a complete production-style deployment.
```

---

# Architecture

```
Developer
      │
      ▼
GitHub
      │
      ▼
Jenkins Pipeline
      │
      ├── Git Checkout
      ├── Compile
      ├── Unit Testing
      ├── SonarQube Analysis
      ├── Quality Gate
      ├── Trivy File System Scan
      ├── Package
      ├── Publish Artifact to Nexus
      ├── Docker Build
      ├── Trivy Image Scan
      ├── Docker Push
      ├── Deploy to Amazon EKS
      └── Verify Deployment
                     │
                     ▼
              Amazon EKS Cluster
                     │
                     ▼
          CloudNative Hub Application
                     │
                     ▼
        Prometheus + Grafana Monitoring
```

---
<img width="1671" height="941" alt="image" src="https://github.com/user-attachments/assets/f6288ae5-3fb7-406f-9a72-6d0feae7e941" />

# Project Structure

```text
production-blog-cicd
│
├── Dockerfile
├── Jenkinsfile
├── pom.xml
├── README.md
│
├── EKS_Terraform
│   ├── provider.tf
│   ├── versions.tf
│   ├── vpc.tf
│   ├── iam.tf
│   ├── eks.tf
│   ├── nodegroup.tf
│   ├── variables.tf
│   ├── outputs.tf
│   └── terraform.tfvars
│
├── k8s
│   ├── namespace.yaml
│   ├── deployment.yaml
│   └── service.yaml
│
└── src
    ├── main
    └── test
```

---

# Project Overview

This project demonstrates a complete **Production-Ready DevSecOps CI/CD Pipeline** for deploying a **Spring Boot CloudNative Hub application** on **Amazon Elastic Kubernetes Service (EKS)**.

The entire deployment process is automated using Jenkins, where every code commit goes through source code compilation, testing, code quality analysis, security scanning, artifact management, Docker image creation, deployment to Kubernetes, and monitoring.

---

# Technologies Used

| Category | Technologies |
|-----------|-------------|
| Programming | Java, Spring Boot |
| CI/CD | Jenkins |
| Code Quality | SonarQube |
| Security | Trivy |
| Artifact Repository | Nexus Repository |
| Containerization | Docker |
| Container Registry | Docker Hub |
| Infrastructure as Code | Terraform |
| Cloud | AWS EC2, AWS EKS, IAM, VPC |
| Orchestration | Kubernetes |
| Monitoring | Prometheus, Grafana |
| Version Control | Git, GitHub |

---

# Objectives

- Build an automated DevSecOps pipeline
- Perform Static Application Security Testing (SAST) using SonarQube
- Scan project dependencies and Docker images using Trivy
- Store build artifacts in Nexus Repository
- Build and publish Docker images automatically
- Provision AWS infrastructure using Terraform
- Deploy the application to Amazon EKS
- Monitor Kubernetes infrastructure using Prometheus and Grafana

---

# CI/CD Pipeline

## Stage 1 — Source Code

- Developer pushes code to GitHub

---

## Stage 2 — Continuous Integration

Jenkins automatically performs:

- Git Checkout
- Maven Compile
- Unit Testing

---

## Stage 3 — Code Quality

SonarQube performs

- Static Code Analysis
- Bug Detection
- Vulnerability Detection
- Code Smell Analysis
- Quality Gate Validation

---

## Stage 4 — Security

Trivy performs

- File System Scan
- Docker Image Vulnerability Scan

---

## Stage 5 — Artifact Management

Build artifacts are automatically published to Nexus Repository.

---

## Stage 6 — Docker

Jenkins

- Builds Docker Image
- Tags Image
- Pushes Image to Docker Hub

---

## Stage 7 — Infrastructure

Terraform provisions

- VPC
- Public Subnets
- Internet Gateway
- Route Tables
- IAM Roles
- Amazon EKS Cluster
- Managed Node Group

---

## Stage 8 — Kubernetes Deployment

Application deployed using

- Namespace
- Deployment
- Service (LoadBalancer)

---

## Stage 9 — Monitoring

Prometheus collects metrics from the Kubernetes environment.

Grafana visualizes

- CPU Usage
- Memory Usage
- Disk Usage
- Network Usage
- Node Health

---

# Repository Structure

```
production-blog-cicd
│
├── Dockerfile
├── Jenkinsfile
├── pom.xml
├── README.md
│
├── EKS_Terraform/
│
├── k8s/
│
└── src/
```

---

# Deployment Steps

## Clone Repository

```bash
git clone https://github.com/Anmol-Kapil/production-blog-cicd.git

cd production-blog-cicd
```

---

## Configure Jenkins

Install

- JDK
- Maven
- Sonar Scanner
- Docker
- Trivy

Configure credentials

- GitHub
- Docker Hub
- SonarQube
- Nexus

---

## Provision Infrastructure

```bash
cd EKS_Terraform

terraform init

terraform plan

terraform apply
```

---

## Deploy Kubernetes Resources

```bash
kubectl apply -f k8s/namespace.yaml

kubectl apply -f k8s/deployment.yaml

kubectl apply -f k8s/service.yaml
```

---

## Verify Deployment

```bash
kubectl get nodes

kubectl get pods -n production-blog

kubectl get svc -n production-blog

kubectl rollout status deployment/production-blog-app -n production-blog
```

---

## Monitoring

Prometheus

```
http://<EC2-IP>:9090
```

Grafana

```
http://<EC2-IP>:3000
```

Jenkins

```
http://<EC2-IP>:8080
```

SonarQube

```
http://<EC2-IP>:9000
```

Nexus

```
http://<EC2-IP>:8081
```

---

# Features

- End-to-End DevSecOps Pipeline
- Production-Style Jenkins Pipeline
- Automated Docker Image Creation
- Static Code Analysis
- Security Vulnerability Scanning
- Infrastructure as Code
- Kubernetes Deployment
- AWS EKS Integration
- Real-Time Monitoring
- CloudNative Hub Custom UI

---

# Challenges Faced

- GitHub large file push failures due to Terraform provider binaries
- Terraform state management
- Jenkins authentication with Amazon EKS
- SonarQube Quality Gate failures
- Kubernetes image refresh issues
- Docker image tagging and deployment synchronization

---

# Future Improvements

- Add Blackbox Exporter
- Implement Email Notifications
- Add Kubernetes Horizontal Pod Autoscaler
- Configure Ingress Controller
- Integrate AWS Route53 with custom domain
- Deploy using Helm Charts
- Implement GitHub Webhook automation

---

# Screenshots

- Jenkins Pipeline
- SonarQube Dashboard
- Nexus Repository
- Docker Hub Repository
- Terraform Apply
- Amazon EKS Cluster
- Kubernetes Pods
- Kubernetes Services
- CloudNative Hub Login Page
- CloudNative Hub Home Page
- Prometheus Dashboard
- Grafana Dashboard

---

# Author

**Anmol Kapil**

Electronics & Computer Engineering Student

Cloud | DevOps | Kubernetes | AWS | Java | Spring Boot

GitHub: https://github.com/Anmol-Kapil

LinkedIn: *(Add your LinkedIn profile here)*
