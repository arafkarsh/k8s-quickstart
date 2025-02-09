# Kubernetes/Istio examples using Colima


## 1. Colima Setup

### 1.1 Install Colima using brew
```
brew install colima
```

### 1.2 Install Docker
```
brew install docker
```

### 1.3 Start Colima
```
colima start
```

### 1.4 Verify Colima Installation
```
docker run -it arafkarsh/alpine
```

### 1.5 Colima Stop
```
colima stop
```

### 1.6 Customize Colima 
```
colima start --cpu 2 --memory 4 --disk 30
```

### 1.7 Checkout the Medium Blog for more details

Read more https://arafkarsh.medium.com/java-23-springboot-3-4-1-multi-architecture-containers-part-9-b8c70ed3842f


## 2. Colima with Kubernetes

### 2.1 Add nginx Repo to Helm

```
helm repo add nginx-stable https://helm.nginx.com/stable
helm repo update
```


### 2.2 Install nginx using Helm
```
helm install nginx-ingress ingress-nginx/ingress-nginx \ 
             --namespace ingress-nginx --create-namespace
```


### 2.3 Start Colima with Kubernetes
```
colima start --kubernetes --cpu 2 --memory 4 
```

### 2.4 Uninstall nginx using Helm
```
helm uninstall nginx-ingress --namespace ingress-nginx
kubectl delete namespace ingress-nginx
```

### 2.5 Read more Kubernetes Examples

Read more... https://arafkarsh.medium.com/java-23-springboot-3-4-1-kubernetes-part-10-097ecfa710a4


## 3. Colima with Kubernetes & Istio

