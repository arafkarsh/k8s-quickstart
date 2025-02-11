# Kubernetes/Istio examples using Colima

![Setup](https://raw.githubusercontent.com/arafkarsh/k8s-quickstart/main/diagrams/Colima-K8s-Istio.jpg)


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


## 3. Colima with Kubernetes Gateway API

### 3.1 Install Kubernetes Gateway API
```
kubectl get crd gateways.gateway.networking.k8s.io &> /dev/null || \
  { kubectl kustomize "github.com/kubernetes-sigs/gateway-api/config/crd?ref=v1.2.0" | kubectl apply -f -; }
```

### 3.2 Install NGINX Gateway Fabric
```
helm install ngf oci://ghcr.io/nginx/charts/nginx-gateway-fabric \
      --create-namespace -n nginx-gateway
```

### 3.3 Uninstall NGINX Gateway Fabric
```
helm uninstall ngf -n nginx-gateway
```

Read more... 

## 4. Colima with Kubernetes & Istio

### 4.1 Using Istioctl

#### 4.1.1 Install Istio
```
istioctl install --set profile=minimal -y
```

#### 4.1.2 Uninstall Istio
```
istioctl uninstall --purge
```

### 4.2. Using Helm Charts


#### 4.2.1 Update Helm
```
helm repo add istio https://istio-release.storage.googleapis.com/charts
helm repo update

```

#### 4.2.2 Install Istio
```
helm install istio-base istio/base -n istio-system --set defaultRevision=default --create-namespace
```

#### 4.2.3 Validate the CRD Installation with helm ls command
```
 helm ls -n istio-system
```

#### 4.2.4 Install Istio with CNI Plugin (optional)

#### 4.2.5 Install the Istio Discovery chart which deploys the istiod service
```
helm install istiod istio/istiod -n istio-system --wait
```

#### 4.2.6 Verify the Istio Discovery Chart Installation
```
helm ls -n istio-system
```

#### 4.2.7 Get the status of the Installed Helm Chart
```
helm status istiod -n istio-system
```

#### 4.2.8 Check Istiod Service is successfully installed and its pods are running
```
kubectl get deployments -n istio-system --output wide
```

#### 4.2.9 Install Ingress Gateway (Optional)
```
helm install istio-ingressgateway istio/gateway -n istio-ingress
```

