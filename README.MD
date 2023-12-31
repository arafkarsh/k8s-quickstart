# Kubernetes Workshop

- Docker Containers (20.10.22)
- Kind (0.17)
- Kubernetes (1.26)
- Istio (1.10x)

##  Getting Started

Please click <a href="https://github.com/arafkarsh/k8s-quickstart/tree/main/kind">here</a> for getting started with Docker, KinD, Kubernetes installation and Demo Apps.

## New Apps Added in Kind section

### Updates on Nov 29, 2021

1. Chapter 5 - Kappa App with Spring Boot Apps (Cart, Order, Payment)
2. Checkout the <a href="https://github.com/arafkarsh/k8s-quickstart/tree/main/kind">Kind directory</a> for the details.
3. For Docker, Kind, Kubectl command short cuts checkout the <a href="https://github.com/arafkarsh/k8s-quickstart/blob/main/bash_profile">bash_profile</a> file.

## Microservices Template

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

These services will be updated with more functionality by end of Aug 2021.

## Server, Virtual Machines & Containers

![Containers](https://raw.githubusercontent.com/arafkarsh/k8s-quickstart/main/diagrams/Servers-VMs-Containers.jpg)

##  How Docker Works?

![Docker](https://raw.githubusercontent.com/arafkarsh/k8s-quickstart/main/diagrams/How-Docker-Works.png)

## Kubernetes Architcture

![K8s Architecture](https://raw.githubusercontent.com/arafkarsh/k8s-quickstart/main/diagrams/K8s-Arch.jpg)

## Service Mesh

![Service Mesh](https://raw.githubusercontent.com/arafkarsh/k8s-quickstart/main/diagrams/Istio-Components.jpg)

##  Demo App Architecture

![Shopping Portal](https://raw.githubusercontent.com/arafkarsh/k8s-quickstart/main/diagrams/K8s-Demo-1.jpg)

## Docker Images - Sofware <a href="https://github.com/arafkarsh/k8s-quickstart/tree/main/docker">(docker)</a> for running Application

- alpine-base
- apache
- echo
- java (8)
- node
- podshell
- tomcat (8,9 & 10)

## Distroless Container Images

<WIP>

## KinD Clusters

- Clusters (Contain Cluster Configurations)
- Apps (Demo Service Infra Code) are created chapter wise based to demonstrate various Kubernetes features.

## Kubernetes Chapters

1. Namespace, Pods, ReplicaSet, Service, Ingress
2. Deployment, ReplicaSet, Service, Ingress, Auto Pod Scaling
3. Secrets, ConfigMap, Enviroment, PodPresets
4. Advanced Pod Features
5. Volumes
6. Network Policies

## Service Mesh -Istio Chapters

7. coming soon.

## Short Cuts for Docker, KinD, Kubernetes and Git

<a href="https://github.com/arafkarsh/k8s-quickstart/blob/master/bash_profile">bash_profile</a> contains shortcuts to various commmands for

1. Docker
2. Kind
3. Kubernetes (kubectl)
4. Git

Add the content of bash_profile to your .bash_profile


Copyright 2021, Apach 2 License. Author: Araf Karsh Hamid
