# Recurso Secrets

## 1

```shell
kubectl get secret --all-namespaces
kubectl apply -f 06-secrets.yaml
kubectl get secret questcode -n staging -o yaml
```