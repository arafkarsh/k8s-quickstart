# Lima with Multi Node Kubernetes Cluster

## 1. Master Node

Step 1.1 
limactl start --name k3s-master template://k3s

export KUBECONFIG="~/.lima/k3s-master/copied-from-guest/kubeconfig.yaml"
kubectl get nodes

Step 1.2
limactl shell k3s-master

Step 1.3
sudo cat /var/lib/rancher/k3s/server/node-token

Step 1.4
ifconfig

--
## 2. Worker Nodes

Step 2.1
limactl start --name k3s-worker1 template://default
limactl start --name k3s-worker2 template://default

Step 2.2
limactl shell k3s-worker1
curl -sfL https://get.k3s.io | K3S_URL=https://<MASTER_NODE_IP>:6443 K3S_TOKEN=<TOKEN> sh -

Step 2.3
kubectl get nodes

