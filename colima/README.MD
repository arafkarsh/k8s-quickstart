# Kubernetes examples using Colima


## Colima Setup
```
brew install colima
```

```
brew install docker
```

## Verify Colima Installation
```
colima start
```

```
docker run -it arafkarsh/alpine
```

## Colima Stop
```
colima stop
```

## Customize Colima 
```
colima start --cpu 2 --memory 4 --disk 30
```


## Colima with Kubernetes
```
colima start --kubernetes --cpu 2 --memory 4 
```


Read more https://arafkarsh.medium.com/java-23-springboot-3-4-1-multi-architecture-containers-part-9-b8c70ed3842f
