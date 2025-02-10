# Istio Installation

## 1. Using Istioctl


### 1.1 Install Istio
```
istioctl install --set profile=minimal -y
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

### 2.01 Install Istio
```
helm install istio-base istio/base -n istio-system --set defaultRevision=default --create-namespace

```

### 2.02 Validate the CRD Installation with helm ls command
```
 helm ls -n istio-system
````

### 2.03 Install Istio with CNI Plugin (optional)

### 2.04 Install the Istio Discovery chart which deploys the istiod service
```
helm install istiod istio/istiod -n istio-system --wait

```

### 2.05 Verify the Istio Discovery Chart Installation
```
helm ls -n istio-system
```

### 2.06 Get the status of the Installed Helm Chart
```
helm status istiod -n istio-system
```

### 2.07 Check Istiod Service is successfully installed and its pods are running
```
kubectl get deployments -n istio-system --output wide
```

### 2.08 Install Ingress Gateway (Optional)
```
helm install istio-ingressgateway istio/gateway -n istio-ingress
```


