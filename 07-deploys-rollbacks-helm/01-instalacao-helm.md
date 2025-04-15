# Instalação Helm Tiller

## 1

```shell
wget https://get.helm.sh/helm-v2.17.0-linux-arm64.tar.gz
tar -xvf helm-v2.17.0-linux-arm64.tar.gz
sudo mv linux-amd64/helm  /usr/local/bin
sudo mv linux-amd64/tiller  /usr/local/bin

helm version
helm init
```

