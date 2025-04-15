## Service Account Bind Role

# 1

```shell
kubectl apply -f 02-tiller-account.yaml
kubectl get sa -n kube-system | grep tiller
kubectl describe sa tiller -n kube-system
```