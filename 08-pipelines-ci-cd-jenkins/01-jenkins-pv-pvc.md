# Instalação

## 1

```shell
kubectl delete pv jenkins
kubectl delete pvc jenkins -n devops

kubectl apply -f jenkins-pv.yaml
kubectl apply -f jenkins-pvc.yaml
kubectl apply -f 01-jenkins-pv-pvc.yaml

sudo chown -R 1000:1000 /mnt/data-jenkins
sudo chmod -R 777 /mnt/data-jenkins

kubectl get pv 
kubectl get pvc -n devops
```

## 2

```shell
helm repo add stable https://charts.helm.sh/stable
helm repo update
helm install --name jenkins -f 01-jenkins-values.yaml --namespace devops stable/jenkins
```

## 3

```shell
kubectl create rolebinding sa-devops-role-clusteradmin --clusterrole=cluster-admin --serviceaccount=devops:default --namespace=devops
kubectl create rolebinding sa-devops-role-clusteradmin-kubesystem --clusterrole=cluster-admin --serviceaccount=devops:default --namespace=kube-system
kubectl create clusterrolebinding jenkins-cluster-admin --clusterrole=cluster-admin --serviceaccount=devops:jenkins


```