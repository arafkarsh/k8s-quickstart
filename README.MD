# Kubernetes Workshop

- Docker Client (20.10.22)
- Docker Engine (27.4.0)
- Containerd (1.7.24)
- colima (0.8.1)
- multipass (1.15)
- Kind (0.17)
- Kubernetes (1.32)
- nginx ingress (1.12.0)
- nginx gateway (1.6.0)
- Istio (1.24.2)

##  1. Getting Started

### 1.1 Getting Started with Colima
Please click <a href="https://github.com/arafkarsh/k8s-quickstart/tree/main/colima">here</a> for getting started with Colima, Docker, Kubernetes, Istio installation and Demo Apps.

![Setup](https://raw.githubusercontent.com/arafkarsh/k8s-quickstart/main/diagrams/Colima-K8s-Istio.jpg)

![K8s-user-roles](https://raw.githubusercontent.com/arafkarsh/k8s-quickstart/main/diagrams/K8s-resource-model.jpg)

### 1.2 Updates as on Jan 26, 2025

#### 1.2.1. Multi Architecture Containers

1. Java (11,17,21 & 23) for Alpine, Alpaquita and Ubuntu OS
2. OS - Alpine, Alpaquita & Ubuntu
3. Apache 2 Web Server
4. Tomcat - 9, 10 & 11
5. PodShell
6. OShell

#### 1.2.2. Added Alpa Series Containers to Docker Hub

1. <a href="https://hub.docker.com/r/arafkarsh/alpha/tags">Alpha</a>
2. <a href="https://hub.docker.com/r/arafkarsh/mock-product-ui/tags">Product UI</a>
3. <a href="https://hub.docker.com/r/arafkarsh/mock-cart-ui/tags">Cart UI</a>
4. <a href="https://hub.docker.com/r/arafkarsh/mock-order-ui/tags">Order UI</a>

#### 1.2.3. Added SpringBoot App to Docker Hub

1. <a href="https://hub.docker.com/r/arafkarsh/mock-product/tags">Product</a>
2. <a href="https://hub.docker.com/r/arafkarsh/mock-cart/tags">Cart</a>
3. <a href="https://hub.docker.com/r/arafkarsh/mock-order/tags">Order</a>

#### 1.2.4. Added Chapter Containers to Docker Hub

1. <a href="https://hub.docker.com/r/arafkarsh/omega/tags">Omega</a>
2. <a href="https://hub.docker.com/r/arafkarsh/sigma/tags">Sigma</a>
3. <a href="https://hub.docker.com/r/arafkarsh/lambda/tags">Lambda</a>
4. <a href="https://hub.docker.com/r/arafkarsh/kappa/tags">Kappa</a>

### 1.3 Getting Started with KinD
Please click <a href="https://github.com/arafkarsh/k8s-quickstart/tree/main/kind">here</a> for getting started with C Docker, KinD, Kubernetes installation and Demo Apps.

### 1.4 New Apps Added in Kind section

1. Chapter 5 - Kappa App with Spring Boot Apps (Cart, Order, Payment)
2. Checkout the <a href="https://github.com/arafkarsh/k8s-quickstart/tree/main/kind">Kind directory</a> for the details.
3. For Docker, Kind, Kubectl command short cuts checkout the <a href="https://github.com/arafkarsh/k8s-quickstart/blob/main/bash_profile">bash_profile</a> file.

### 1.6 Microservices Template

Microservice Template gives you a

1. SpringBoot App template with
2. Open API 3 Ex,
3. Spring Actuator,
4. Spring Sleuth and
5. Pom file with (SpringBoot) Fat and Thin (Maven) jar file creation and
6. Dockerfile for containerisation.

Checkout the <a href="https://github.com/arafkarsh/ms-quickstart">repository</a> to Quickstart on Springboot based Dockerized Microservices.

Mock Services built using Microservices Template Code base. These services have REST Endpoint implementations.

1. <a href="https://github.com/arafkarsh/mock-cart">Cart Service</a>
2. <a href="https://github.com/arafkarsh/mock-order">Order Service</a>
3. <a href="https://github.com/arafkarsh/mock-payment">Payment Service</a>
4. <a href="https://github.com/arafkarsh/mock-product">Product Service</a>


## 2. Understanding the Servers, Containers & Container Orchestration

### 2.1 Server, Virtual Machines & Containers

![Containers](https://raw.githubusercontent.com/arafkarsh/k8s-quickstart/main/diagrams/Servers-VMs-Containers.jpg)

###  2.2 How Docker Works?

![Docker](https://raw.githubusercontent.com/arafkarsh/k8s-quickstart/main/diagrams/How-Docker-Works.png)

### 2.3 Kubernetes Architcture

![K8s Architecture](https://raw.githubusercontent.com/arafkarsh/k8s-quickstart/main/diagrams/K8s-Arch.jpg)

### 2.4 Service Mesh

![Service Mesh](https://raw.githubusercontent.com/arafkarsh/k8s-quickstart/main/diagrams/Istio-Components.jpg)

## 3. Ozazo ShopEZ Demo Application

### 3.1 Demo App Architecture

![Shopping Portal](https://raw.githubusercontent.com/arafkarsh/k8s-quickstart/main/diagrams/K8s-Demo-1.jpg)

### 3.2 ShopEZ Hardware Specs

![Shopping HW](https://raw.githubusercontent.com/arafkarsh/k8s-quickstart/main/diagrams/K8s-Colima-Examples-Specs.jpg)

### 3.3 Docker Images - Software <a href="https://github.com/arafkarsh/k8s-quickstart/tree/main/docker">(docker)</a> for running Application

- OS (Alpine, Alpaquita, Ubuntu)
- Java 11, 17, 21, 23
- Apache 2 Web Server
- Tomcat 9, 10, 11
- PodShell and OShell

## 4. Developer Tools

### 4.1 Colima Setup

- Single Node 
- Container Examples
- Kubernetes Examples
- Istio Examples (WIP)
- Serverless Examples (WIP) 

Checkout the Colima Section for more details. Please click <a href="https://github.com/arafkarsh/k8s-quickstart/tree/main/colima">here</a> for getting started with Colima, Docker, Kubernetes, Istio installation and Demo Apps.

### 4.2 KinD Clusters

- Clusters (Contain Cluster Configurations)
- Apps (Demo Service Infra Code) are created chapter wise based to demonstrate various Kubernetes features.

Checkout the KinD section for more details. Please click <a href="https://github.com/arafkarsh/k8s-quickstart/tree/main/kind">here</a> for getting started with C Docker, KinD, Kubernetes installation and Demo Apps.

### 4.3 Kubernetes Chapters

1. Namespace, Pods, ReplicaSet, Service, Ingress
2. Deployment, ReplicaSet, Service, Ingress, Auto Pod Scaling
3. Secrets, ConfigMap, Enviroment, PodPresets
4. Advanced Pod Features
5. Volumes
6. Network Policies

### 4.4 Service Mesh -Istio Chapters

7. coming soon.

### 4.5 Short Cuts for Docker, KinD, Kubernetes and Git

<a href="https://github.com/arafkarsh/k8s-quickstart/blob/master/bash_profile">bash_profile</a> contains shortcuts to various commmands for

1. Docker
2. Kind
3. Kubernetes (kubectl)
4. Git

Add the content of bash_profile to your .bash_profile


Copyright 2021-25, Apach 2 License. Author: Araf Karsh Hamid
