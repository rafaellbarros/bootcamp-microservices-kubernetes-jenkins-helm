# Dashboard

## 1
```shell
kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/v2.7.0/aio/deploy/recommended.yaml
```

## 2
```shell
kubectl get all --all-namespaces

NAMESPACE              NAME                                             READY   STATUS    RESTARTS      AGE
default                pod/nginx                                        1/1     Running   0             16h
default                pod/nginx-deployment-77d8468669-6sgkk            1/1     Running   0             24m
default                pod/nginx-deployment-77d8468669-kjfpd            1/1     Running   0             24m
default                pod/nginx-deployment-77d8468669-t5mrs            1/1     Running   0             24m
kube-system            pod/calico-kube-controllers-5b9b456c66-sgbnq     1/1     Running   0             16h
kube-system            pod/calico-node-92x59                            1/1     Running   0             16h
kube-system            pod/coredns-55cb58b774-8mbcl                     1/1     Running   0             16h
kube-system            pod/coredns-55cb58b774-lxk59                     1/1     Running   0             16h
kube-system            pod/etcd-engineer                                1/1     Running   0             16h
kube-system            pod/kube-apiserver-engineer                      1/1     Running   0             16h
kube-system            pod/kube-controller-manager-engineer             1/1     Running   1 (15h ago)   16h
kube-system            pod/kube-proxy-d9gwp                             1/1     Running   0             16h
kube-system            pod/kube-scheduler-engineer                      1/1     Running   1 (15h ago)   16h
kubernetes-dashboard   pod/dashboard-metrics-scraper-795895d745-zhrxl   1/1     Running   0             103s
kubernetes-dashboard   pod/kubernetes-dashboard-56cf4b97c5-9hf95        1/1     Running   0             103s

NAMESPACE              NAME                                TYPE        CLUSTER-IP       EXTERNAL-IP   PORT(S)                  AGE
default                service/kubernetes                  ClusterIP   10.96.0.1        <none>        443/TCP                  16h
kube-system            service/kube-dns                    ClusterIP   10.96.0.10       <none>        53/UDP,53/TCP,9153/TCP   16h
kubernetes-dashboard   service/dashboard-metrics-scraper   ClusterIP   10.104.82.138    <none>        8000/TCP                 103s
kubernetes-dashboard   service/kubernetes-dashboard        ClusterIP   10.111.172.201   <none>        443/TCP                  103s

NAMESPACE     NAME                         DESIRED   CURRENT   READY   UP-TO-DATE   AVAILABLE   NODE SELECTOR            AGE
kube-system   daemonset.apps/calico-node   1         1         1       1            1           kubernetes.io/os=linux   16h
kube-system   daemonset.apps/kube-proxy    1         1         1       1            1           kubernetes.io/os=linux   16h

NAMESPACE              NAME                                        READY   UP-TO-DATE   AVAILABLE   AGE
default                deployment.apps/nginx-deployment            3/3     3            3           24m
kube-system            deployment.apps/calico-kube-controllers     1/1     1            1           16h
kube-system            deployment.apps/coredns                     2/2     2            2           16h
kubernetes-dashboard   deployment.apps/dashboard-metrics-scraper   1/1     1            1           103s
kubernetes-dashboard   deployment.apps/kubernetes-dashboard        1/1     1            1           103s

NAMESPACE              NAME                                                   DESIRED   CURRENT   READY   AGE
default                replicaset.apps/nginx-deployment-77d8468669            3         3         3       24m
kube-system            replicaset.apps/calico-kube-controllers-5b9b456c66     1         1         1       16h
kube-system            replicaset.apps/coredns-55cb58b774                     2         2         2       16h
kubernetes-dashboard   replicaset.apps/dashboard-metrics-scraper-795895d745   1         1         1       103s
kubernetes-dashboard   replicaset.apps/kubernetes-dashboard-56cf4b97c5        1         1         1       103s
```

## 3
```shell
kubectl apply -f dashboard-adminuser.yaml -n kubernetes-dashboard
kubectl apply -f dashboard-clusterrole.yaml -n kubernetes-dashboard
kubectl apply -f dashboard-secret.yaml -n kubernetes-dashboard
```

## 4
```shell
kubectl get secret admin-user -n kubernetes-dashboard -o jsonpath={".data.token"} | base64 -d
```