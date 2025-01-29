
# Alias Help
alias adock="alias | grep docker"
alias akind="alias | grep kind"
alias akube="alias | grep kube"
alias agit="alias | grep git"

# Docker Commands
# docker container run  –it ubuntu /bin/bash
alias dcr="docker container run -it"
alias dcd="docker container run -d"
# 
# ID=$(docker container run –d -i ubuntu)
# docker container exec -it $ID /bin/bash
alias dce="docker container exec -it"
# 
# docker container start $ID
alias dcstart="docker container start"
#
# Stop a Single Container based on ID (stored above)
# docker container stop $ID 
# Stops all the containers
#docker container stop $(docker container ls –aq)
alias dcstop="docker container stop"
# alias dcstopall="docker container stop $(docker container ls –aq)"
#
# List All the Containers
alias dcl="docker container ls"
#
# Removve the Container based on ID
alias dcrm="docker container rm"
#
#  docker container rm $(docker container ls –aq)
# alias dcrmall="docker container rm $(docker container ls –aq)"
#
alias dp="docker push"
alias dpull="docker pull"
#
# docker rmi $(docker images | grep '^<none>' | tr -s " " | cut -d " " -f 3)
alias dcrmi="docker rmi $(docker images | grep '^<none>' | tr -s " " | cut -d " " -f 3)"

# Kind K8s Cluster
alias kccd="kind create cluster"
alias kcc="kind create cluster --config"
alias kk8s="fgrep server ~/.kube/config"
alias kgc="kind get clusters"
alias kci="kubectl cluster-info"

# Crictl
# Latest K8s Nodes contains CRI tools instead of Docker CLIs
alias cps="crictl ps"

# Multipass Ubuntu
alias mp="multipass"
alias mpl="multipass list"
alias mpi="multipass info"
alias mps="multipass shell"
alias mpd="multipass delete"
alias mpp="multipass purge"

# Kubernetes Commands

# Kubernetes Minikube Commands
alias mk="minikube "
alias mi="minikube ip"
alias ma="minikube addons"
alias mal="minikube addons list"
alias mae="minikube addons enable"
alias mk8s="minikube get-k8s-versions"
alias mks="minikube ssh"
alias msl="minikube service list"
alias mkv="minikube version"
alias mkstart="minikube start --memory=8192 --cpus=4"
alias mkstop="minikube stop"
alias mkstartn="minikube start --network-plugin=cni --extra-config=kubelet.network-plugin=cni --memory=5120"

# Kubernetes Minikube Monitoring
alias mkd="minikube dashboard"
alias maoh="minikube addons open heapster"

# Kubernetes Basic Commands
alias k="kubectl"
alias kd="kubectl describe"
alias ke="kubectl exec -it"
alias kg="kubectl get"
alias kl="kubectl logs "
alias kr="kubectl run -it"
alias kv="kubectl version -o yaml"
alias ke="kubectl get events -n"

# Kubernetes Get Commands
alias kga="kubectl get ing,svc,pods -o wide"
alias kgd="kubectl get deploy -o wide"
alias kgh="kubectl get hpa -o wide"
alias kgn="kubectl get nodes -o wide"
alias kgp="kubectl get pods -o wide"
alias kgr="kubectl get rs -o wide"
alias kgs="kubectl get svc -o wide"

# Kubernetes Objects Management
alias koc="kubectl create -f"
alias koa="kubectl apply -f"
alias kor="kubectl replace -f"
alias kod="kubectl delete -f"

# Kubernetes Description of Objects
alias kdi="kubectl describe ing"
alias kdd="kubectl describe deploy"
alias kdp="kubectl describe pods"
alias kdr="kubectl describe rs"
alias kds="kubectl describe svc"
alias kdst="kubectl describe sts"

# Kubernetes Rollout Deployments
alias krs="kubectl rollout status deploy"
alias krh="kubectl rollout history deploy"
alias krp="kubectl rollout pause deploy"
alias krr="kubectl rollout resume deploy"
alias kru="kubectl rollout undo deploy "

# Kubernetes Developer Tools
alias podshell="kubectl run -it podshell --image=arafkarsh/podshell"
alias podshella="kubectl -c podshell -it attach "

# Git Commands
alias g="git"
alias gi="git init"
alias ga="git add ."
alias grao="git remote add origin"
alias gc="git commit -a -m"
alias gpo="git push -u origin --all"

