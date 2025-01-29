# Service Mesh - Istio (WIP)

Istio Reference: https://istio.io/latest/docs/setup/getting-started/

## Download Istio

```
$ curl -L https://istio.io/downloadIstio | sh -
```

## Setup Istio

```
$ cd istio-1.11.3
$ export PATH=$PWD/bin:$PATH

$ istioctl install --set profile=demo -y

# $ kubectl label namespace default istio-injection=enabled
```

## Setup Dashboard for UI

```
$ kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/v2.1.0/aio/deploy/recommended.yaml
$ kubectl create clusterrolebinding default-admin --clusterrole cluster-admin --serviceaccount=default:default

$ token=$(kubectl get secrets -o jsonpath="{.items[?(@.metadata.annotations['kubernetes\.io/service-account\.name']=='default')].data.token}"|base64 --decode)

echo $token

$ kubectl proxy
```

## Setup Istio Demo App

```
$ kubectl label namespace default istio-injection=enabled

$ kubectl apply -f samples/bookinfo/platform/kube/bookinfo.yaml

$ kubectl get ing,services,pods -o wide

$ kubectl exec "$(kubectl get pod -l app=ratings -o jsonpath='{.items[0].metadata.name}')" -c ratings -- curl -sS productpage:9080/productpage | grep -o "<title>.*</title>"

$ kubectl apply -f samples/bookinfo/networking/bookinfo-gateway.yaml

$ istioctl analyze

```



