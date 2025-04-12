# Coonfigurações adicionais

## 1

### Calico
```shell
kubectl apply -f https://raw.githubusercontent.com/projectcalico/calico/v3.25.0/manifests/calico.yaml
kubectl taint nodes --all node-role.kubernetes.io/control-plane-
```

### Flannel
```shell
kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/master/Documentation/kube-flannel.yml
kubectl taint nodes --all node-role.kubernetes.io/control-plane-
```

## 2

```shell
kubectl get pods -n kube-system
kubectl get nodes
```