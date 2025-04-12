# NodePort via arquivo yaml

## 1
```shell
kubectl delete service kubernetes-dashboard-nodeport -n kubernetes-dashboard 

kubectl delete service/kubernetes-nodeport -n kubernetes-dashboard

kubectl apply -f dashboard-service-nodeport.yml
```