# Microservices-Task

## Overview
This document provides details on testing various services after running the `docker-compose` file. These services include User, Product, Order, and Gateway Services. Each service has its own endpoints for testing purposes.

---

## Services and Endpoints

### **User Service**
- **Base URL:** `http://localhost:3000`
- **Endpoints:**
  - **List Users:**  
    ```
    curl http://localhost:3000/users
    ```
    Or open in your browser: [http://localhost:3000/users](http://localhost:3000/users)

---

### **Product Service**
- **Base URL:** `http://localhost:3001`
- **Endpoints:**
  - **List Products:**  
    ```
    curl http://localhost:3001/products
    ```
    Or open in your browser: [http://localhost:3001/products](http://localhost:3001/products)

---

### **Order Service**
- **Base URL:** `http://localhost:3002`
- **Endpoints:**
  - **List Orders:**  
    ```
    curl http://localhost:3002/orders
    ```
    Or open in your browser: [http://localhost:3002/orders](http://localhost:3002/orders)

---

### **Gateway Service**
- **Base URL:** `http://localhost:3003/api`
- **Endpoints:**
  - **Users:**  
    ```
    curl http://localhost:3003/api/users
    ```
  - **Products:**  
    ```
    curl http://localhost:3003/api/products
    ```
  - **Orders:**  
    ```
    curl http://localhost:3003/api/orders
    ```

---


## Prerequisites
- Docker Desktop
- Docker Compose


## Instructions

1. Verify Each Service Runs Locally FIRST, Never containerize a broken app. 

  For each service:

  ```
  cd user-service
  npm install
  npm start
  ```

  Test:
    http://localhost:3000

  Repeat for:
    product-service
    gateway-service

2. Start all services using the `docker-compose` file:
   ```
   docker-compose up
   ```
3. Once the services are running, use the above endpoints to verify the functionality.

4. Stop Application

  ```
  docker compose down
  ```
5. Troubleshooting
   Port already in use

    Stop existing containers:
    ```
    docker ps
    docker stop <container-id>
    ```
    Rebuild containers
    ```
    docker compose up --build
    ```


# FINAL SUBMISSION STRUCTURE

```
Microservices/
├── user-service/
│   └── Dockerfile
├── product-service/
│   └── Dockerfile
├── gateway-service/
│   └── Dockerfile
├── docker-compose.yml
└── README.md
```
