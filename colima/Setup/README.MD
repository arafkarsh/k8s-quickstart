# Alpha Application with 4 Microservices

![Setup](https://raw.githubusercontent.com/arafkarsh/k8s-quickstart/main/diagrams/Colima-K8s-Istio.jpg)

## 1. Base Kubernetes Version

### 1.1 Install the Alpha Application

The allInstall Script will check if the nginx ingress is available. 
if not available then it will install the nginx ingress.

```
cd k8s
allInstall
```

### 1.2 UnInstall the Alpha Application
```
allUnInstall
```

## 2. Kubernetes with Gateway

### 2.1 Install the Kubernetes Gateway CRDs
```
kubectl get crd gateways.gateway.networking.k8s.io &> /dev/null || \
  { kubectl kustomize "github.com/kubernetes-sigs/gateway-api/config/crd?ref=v1.2.0" | kubectl apply -f -; }

```

### 2.2 Install the Alpha Application

For the App to work with Kubernetes Gateway (under Colima) then nginx ingress
must be removed. The install script will remove nginx ingress or istio ingress.

```
cd k8s-gw
allInstall
```

### 2.3 UnInstall the Alpha Application
```
allUnInstall
```

## 3. Kubernetes with Istio

### 3.1 Install Istio Service Mesh

### 3.2 Install the Alpha Application

Install script will remove the nginx ingress as Istio has its on ingress istio-ingressgateway.

```
cd svc-mesh
allInstall
```

### 3.3 UnInstall the Alpha Application
```
allUnInstall
```

