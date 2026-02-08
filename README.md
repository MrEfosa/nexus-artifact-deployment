# Nexus Artifact Publishing Project

## Project Overview
This project demonstrates the setup, configuration, and use of **Sonatype Nexus Repository Manager** on a Linux server hosted on DigitalOcean. It includes deploying **Java Gradle** and **Java Maven** projects to Nexus, demonstrating a complete artifact lifecycle from build to repository publishing.

The project emphasizes **automation, reproducibility, and professional DevOps practices**.

---

## Technologies Used
- **Cloud / Server:** DigitalOcean Droplet (Ubuntu Linux)  
- **Artifact Repository:** Sonatype Nexus 3  
- **Programming Language:** Java 8  
- **Build Tools:** Gradle, Maven  
- **Automation / Scripting:** Bash  

---

## Project Structure

```
nexus-artifact-deployment/
│
├── scripts/                  # All your automation scripts
│   ├── install-nexus.sh      # Already pushed
│   ├── publish-gradle.sh     # Gradle publishing
│   └── publish-maven.sh      # Maven publishing
│
├── java-app/                  # Gradle project
│   ├── build.gradle
│   ├── gradle.properties (if used)
│   ├── settings.gradle
│   └── src/
│
├── java-maven-app/            # Maven project
│   ├── pom.xml
│   └── src/
│
├── screenshots/               # Screenshots of UI, Nexus repositories, builds, etc.
│
└── README.md                  # Project documentation
```
## Server & Nexus Setup

Provision a DigitalOcean Ubuntu Droplet, create a non-root user, and install Java 8.

Run the included script to automatically download, configure, and start Nexus:

```bash
chmod +x install-nexus.sh
./install-nexus.sh

```
## Accessing Nexus

After running the installation script, Nexus Repository Manager will be available in your browser:

[Access Nexus Repository Manager](http://YOUR_SERVER_IP:8081)


