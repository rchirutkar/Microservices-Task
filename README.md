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
## Screenshots

1. Verify the application code before creating docker, install packages and test using Curl on local

<img width="1263" height="104" alt="image" src="https://github.com/user-attachments/assets/0b656e09-a21d-4954-a160-3874d055805d" />

2. Docker compose up
   
<img width="946" height="227" alt="image" src="https://github.com/user-attachments/assets/bffddd17-66b1-48ac-9602-81f1a487ad5c" />

3. Docker Desktop

    - Docker Desktop containers running
  
     <img width="964" height="133" alt="image" src="https://github.com/user-attachments/assets/46243ff5-a98e-4377-a30e-53a34e427493" />
     <img width="1000" height="371" alt="image" src="https://github.com/user-attachments/assets/44041dd4-a9a8-4cef-8fda-fed4e9b2f933" />
    
    - Docker ps
   
     <img width="1167" height="101" alt="image" src="https://github.com/user-attachments/assets/6a226c78-239b-4349-89c8-0c2c08fd439f" />

4. Browser shows running services
    - Users
      
      <img width="426" height="137" alt="image" src="https://github.com/user-attachments/assets/6cb374c5-02a2-4711-a84f-d1b0618e51e0" />

    - Products
      
      <img width="541" height="148" alt="image" src="https://github.com/user-attachments/assets/55e34503-c2f9-4764-b387-4863a743dbea" />

    - Gateway
      
      <img width="415" height="151" alt="image" src="https://github.com/user-attachments/assets/0dbff1fe-3ffb-41b4-a671-58350480b051" />

      <img width="540" height="146" alt="image" src="https://github.com/user-attachments/assets/057cbb28-a1e5-490b-8b10-88ce33700b77" />
  

