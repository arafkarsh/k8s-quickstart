# Knative (WIP)

## Knative Setup

1. Install Knative on KinD (Konk)

```
curl -sL install.konk.dev | bash
```

2. Verify Installation

```
kind get clusters
```

3. Install Knative CLI

Mac OS
```
brew install knative/client/kn
```

Using Docker Image
```
docker run --rm -v "$HOME/.kube/config:/root/.kube/config" gcr.io/knative-releases/knative.dev/client/cmd/kn:latest service list
```

## Run Knative Cluster with Hello World App

1. Create a Service
```
kubectl apply -f hello-1.yaml
```

2. Verify the Service
```
kn service list
```

3. Test your Service
```
curl http://hello.default.127.0.0.1.nip.io
```

Expected output is
Hello World!


