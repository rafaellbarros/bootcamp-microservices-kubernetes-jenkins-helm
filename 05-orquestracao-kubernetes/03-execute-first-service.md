# Executando nosso primeiro Serviço

## 1

```shell
kubectl run nginx --image=nginx
kubectl get pods
```

## 2

```shell
curl http://localhost:8001/api/v1/namespaces/default/pods/$POD_NAME/proxy/
curl http://localhost:8001/api/v1/namespaces/default/pods/nginx/proxy/
```
