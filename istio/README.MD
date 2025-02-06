# Istio Installation

## 1. Using Istioctl


### 1.1 Install Istio
```
istioctl install
```


### 1.2 Uninstall Istio
```
istioctl uninstall --purge
```

## 2. Using Helm Charts


### 2.0 Update Helm
```
helm repo add istio https://istio-release.storage.googleapis.com/charts
helm repo update

```

### 2.1 Install Istio
```
helm install istio-base istio/base -n istio-system --set defaultRevision=default --create-namespace

```

### 2.2 Validate the CRD Installation with helm ls command
```
 helm ls -n istio-system
````

### 2.3 Install Istio with CNI Plugin (optional)

### 2.4 Install the Istio Discovery chart which deploys the istiod service
```
helm install istiod istio/istiod -n istio-system --wait

```

### 2.5 Verify the Istio Discovery Chart Installation
```
helm ls -n istio-system
```

### 2.6 Get the status of the Installed Helm Chart
```
helm status istiod -n istio-system
```

### 2.7 Check Istiod Service is successfully installed and its pods are running
```
kubectl get deployments -n istio-system --output wide
```

### 2.8 Optional - Install an Ingress Gateway
```
kubectl create namespace istio-ingress
helm install istio-ingress istio/gateway -n istio-ingress --wait
```

### 2.9 (Install on port 8080) - Install Istio Ingress Gateway

In your Colima + Kubernetes setup, an NGINX Ingress Controller is already running on ports 80/443. This prevents Istio from deploying its own Ingress Gateway by default. To enable both ingress controllers to coexist, configure the Istio Ingress Gateway to operate on ports 8080/8443 instead.

```
helm install istio-ingress istio/gateway -n istio-ingress -f istio-gateway-values.yaml --wait
```

### Content of file istio-gateway-values.yaml
```
service:
  ports:
    - name: http2
      port: 8080
      targetPort: 8080
    - name: https
      port: 8443
      targetPort: 8443
```
