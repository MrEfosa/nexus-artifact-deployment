# Nexus Artifact Deployment — DevOps Demo Project

## 📌 Overview

This project demonstrates a complete DevOps workflow for deploying and managing a **Nexus Repository Manager** on a cloud server and publishing Java artifacts using both **Gradle** and **Maven**.

The goal is to simulate a real-world artifact management pipeline:

- Provision a Linux server
- Install and configure Nexus Repository Manager
- Automate setup using shell scripts
- Build Java applications
- Publish artifacts to Nexus repositories
- Follow secure credential practices

---

## 🧱 Architecture Summary

```
nexus-artifact-deployment/
│
├── scripts/                  
│   ├── install-nexus.sh      
│   ├── publish-gradle.sh    
│   └── publish-maven.sh    
│
├── java-app/              
│   ├── build.gradle
│   ├── gradle.properties (if used)
│   ├── settings.gradle
│   └── src/
│
├── java-maven-app/       
│   ├── pom.xml
│   └── src/
│
├── screenshots/         
│
└── README.md           
```
## 🚀 Phase 1 — Nexus Installation & Configuration

### Objective

Deploy Nexus Repository Manager from scratch on a Linux server using automation.

### Environment

- Cloud provider: DigitalOcean
- OS: Ubuntu Linux
- Java: OpenJDK 8
- Nexus Repository Manager 3

### Automated Installation Script

Location:

scripts/install-nexus.sh

This script performs:

- System updates
- Java installation
- Nexus download & extraction
- User creation (`nexus`)
- Permission setup
- Nexus startup configuration

### Run Installation

```bash
chmod +x install-nexus.sh
./install-nexus.sh

```
Access Nexus UI:


http://SERVER-IP:8081



## Notes / Best Practices

- Credentials should never be pushed to GitHub.

- Use .gitignore to exclude build artifacts and sensitive files.

- Folder structure separates scripts and projects for clarity.

- **Nexus repositories used:** Maven Snapshots, Maven Public (proxy)
