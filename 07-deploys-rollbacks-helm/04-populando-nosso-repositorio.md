# Populando nosso repositório

## 1

```shell
echo $(kubectl get nodes --namespace devops -o jsonpath="{.items[0].status.addresses[0].address}")
```

```shell
helm repo add questcode http://$(kubectl get nodes --namespace devops -o jsonpath="{.items[0].status.addresses[0].address}"):30010
```

```shell
helm repo list
```

```shell
helm repo update
```

```shell
helm plugin install https://github.com/chartmuseum/helm-push.git --version v0.7.1
```

```shell
chmod +x 04-chartmuseum.sh
./04-chartmuseum.sh
```

```shell
helm repo update
```

```shell
helm search
```