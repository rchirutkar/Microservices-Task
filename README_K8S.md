# Microservices Deployment using Docker & Kubernetes

## Project Overview

This project demonstrates the containerization and deployment of a Node.js-based microservices application using Docker and Kubernetes (Minikube).

The application consists of four independent microservices:

* **User Service** (Port 3000)
* **Product Service** (Port 3001)
* **Order Service** (Port 3002)
* **Gateway Service** (Port 3003)

Each service has been:

* Containerized using Docker
* Published to DockerHub
* Deployed to Kubernetes using Minikube
* Exposed internally using Kubernetes ClusterIP Services
* Configured with Liveness and Readiness Probes

---

# Project Structure

```text
Microservices/
│
├── user-service/
│   ├── Dockerfile
│   ├── app.js
│   └── package.json
│
├── product-service/
│   ├── Dockerfile
│   ├── app.js
│   └── package.json
│
├── order-service/
│   ├── Dockerfile
│   ├── app.js
│   └── package.json
│
├── gateway-service/
│   ├── Dockerfile
│   ├── app.js
│   └── package.json
│
├── deployments/
│   ├── user-service.yaml
│   ├── product-service.yaml
│   ├── order-service.yaml
│   └── gateway-service.yaml
│
├── services/
│   ├── user-service.yaml
│   ├── product-service.yaml
│   ├── order-service.yaml
│   └── gateway-service.yaml
│
└── README_K8S.md
```

---

# Prerequisites

Before running the project, ensure the following are installed:

* Docker Desktop
* Docker CLI
* Minikube
* kubectl
* Git
* DockerHub Account

---

# Build Docker Images

Run the following commands from the project root.

## User Service

```bash
docker build -t rchirutkar/user-service:v1 ./user-service
```

## Product Service

```bash
docker build -t rchirutkar/product-service:v1 ./product-service
```

## Order Service

```bash
docker build -t rchirutkar/order-service:v1 ./order-service
```

## Gateway Service

```bash
docker build -t rchirutkar/gateway-service:v1 ./gateway-service
```

---

# Push Images to DockerHub

Login to DockerHub:

```bash
docker login
```

Push the images:

```bash
docker push rchirutkar/user-service:v1
docker push rchirutkar/product-service:v1
docker push rchirutkar/order-service:v1
docker push rchirutkar/gateway-service:v1
```

---

# Start Minikube

```bash
minikube start --driver=docker
```

Verify the cluster:

```bash
kubectl get nodes
```

Expected output:

```text
NAME        STATUS   ROLES           AGE
minikube    Ready    control-plane
```

---

# Deploy the Application

Deploy all Kubernetes Deployments:

```bash
kubectl apply -f deployments/
```

Deploy all Kubernetes Services:

```bash
kubectl apply -f services/
```

---

# Verify Deployment

Check Deployments:

```bash
kubectl get deployments
```

Check Pods:

```bash
kubectl get pods -o wide
```

Check Services:

```bash
kubectl get svc
```

---

# Access the Application

Forward the Gateway Service:

```bash
kubectl port-forward svc/gateway-service 3003:3003
```

Open your browser:

```
http://localhost:3003
```

Example endpoints:

```
GET /users
GET /products
GET /orders
GET /health
```

---

# Kubernetes Features Used

* Deployments
* ClusterIP Services
* Labels & Selectors
* Resource Requests
* Resource Limits
* Liveness Probe
* Readiness Probe
* Kubernetes DNS-based Service Discovery

---

# Docker Features Used

* Dockerfile
* Docker Images
* DockerHub Registry
* Multi-service Architecture
* Docker Networking

---

# Useful Commands

### View Pods

```bash
kubectl get pods
```

### View Services

```bash
kubectl get svc
```

### View Deployments

```bash
kubectl get deployments
```

### View Logs

```bash
kubectl logs <pod-name>
```

### Describe a Pod

```bash
kubectl describe pod <pod-name>
```

### Delete Resources

```bash
kubectl delete -f deployments/
kubectl delete -f services/
```

### Stop Minikube

```bash
minikube stop
```

### Delete Minikube Cluster

```bash
minikube delete
```

---

# Screenshots Included

* Minikube Cluster Running
* Kubernetes Deployments
* Running Pods
* ClusterIP Services
* Gateway Service Response
* DockerHub Repository
* Docker Desktop Containers 

---

# Author

**Ranjeet Chirutkar**

Docker • Kubernetes • DevOps Learning Project
