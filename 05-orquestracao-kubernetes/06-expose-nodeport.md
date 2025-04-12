# Exposição NodePort

## 1
```shell
watch kubectl get all --all-namespaces
```

## 2

```shell
kubectl describe pod/kubernetes-dashboard-56cf4b97c5-9hf95 -n kubernetes-dashboard

kubectl expose deployment kubernetes-dashboard --name=kubernetes-dashboard-nodeport --target-port=8443 --port=443 --type=NodePort -n kubernetes-dashboard
```

