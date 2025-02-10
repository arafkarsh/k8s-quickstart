# Setup Advanced Kubernetes - Gateway and HTTP Route

## Install the CRDs
```
kubectl apply -k "github.com/kubernetes-sigs/gateway-api/config/crd/standard?ref=v1.2.0"
```


## Install the GW CRDs
```
kubectl get crd gateways.gateway.networking.k8s.io  &> /dev/null || \
  { kubectl kustomize "github.com/kubernetes-sigs/gateway-api/config/crd?ref=v1.2.0" | kubectl apply -f -; }
```
