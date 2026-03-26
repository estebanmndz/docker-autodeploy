# 🐳 Docker Auto Deployment Script (Linux)

![Docker](https://img.shields.io/badge/Docker-Containers-blue)
![Bash](https://img.shields.io/badge/Bash-Scripting-black)
![Automation](https://img.shields.io/badge/Automation-Deployment-green)

> 💡 Automatically install Docker and deploy a containerized application on a Linux server

---

## 🧠 Overview

This project provides a Bash script that automates the installation and deployment of a Dockerized application on a Linux server.

It simulates a real-world scenario where infrastructure needs to be prepared and applications deployed with minimal manual intervention.

**Technologies used:**

* Docker
* Docker Compose
* Bash scripting
* Linux system administration

---

## 🎯 Objective

The goal of this project is to:

* Automate Docker installation
* Configure the host environment
* Deploy a containerized application
* Reduce manual setup steps

---

## 🏗️ Execution Flow

```id="l2d9sl"
[Linux Server]
        ↓
[Run Script (sudo)]
        ↓
[Install Docker if needed]
        ↓
[Install Docker Compose plugin]
        ↓
[Generate docker-compose.yml]
        ↓
[Deploy container (nginx)]
        ↓
[Running service]
```

---

## ⚙️ Key Features

* Automatic Docker installation
* Docker Compose setup
* User configuration for Docker usage
* Auto-generation of `docker-compose.yml`
* Container deployment using `docker compose up -d`
* Execution logging (`deploy.log`)
* Basic idempotency checks

---

## 🧩 How It Works

The script performs:

1. Validates execution as root
2. Checks if Docker is installed (installs if missing)
3. Installs Docker Compose plugin if needed
4. Adds the user to the Docker group
5. Creates a `docker-compose.yml` file (nginx container)
6. Deploys the container in detached mode
7. Displays running containers

---

## 🔐 Security Considerations

* Requires root privileges (`sudo`)
* Adds user to Docker group (privileged access)
* Default deployment exposes port 80 (should be restricted in production)

---

## 🌍 Real-World Use Case

This script can be used to:

* Quickly bootstrap a server with Docker
* Deploy simple web services
* Automate environment setup for development or testing
* Serve as a base for more advanced DevOps automation

---

## ▶️ Usage

```bash id="3c92xr"
sudo ./deploy.sh
```

---

## 📊 Example Output

```id="5k2dzn"
🚀 Iniciando despliegue Docker...
📦 Instalando Docker...
🐳 Desplegando contenedor...
✅ Despliegue completado
```

---

## 🚀 Future Improvements

* Parameterize container image and ports
* Add support for multiple services
* Integrate with CI/CD pipelines
* Add reverse proxy (NGINX / Traefik)
* Implement security hardening

---

## 📌 Key Takeaways

This project demonstrates:

* Automation of container deployment
* Linux system provisioning
* Use of Docker and Docker Compose
* DevOps-oriented scripting practices

---
