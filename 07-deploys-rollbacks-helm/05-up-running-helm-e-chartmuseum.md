# Up Running via Helm e ChartMuseum 

## 1

```shell
helm delete --purge backend-scm
helm delete --purge backend-user
helm delete --purge frontend
```

```shell
helm install questcode/frontend --namespace  staging --name staging-frontend
helm install questcode/backend-scm --namespace  staging --name staging-backend-scm
helm install questcode/backend-user --namespace  staging --name staging-backend-user
```

```shell
docker tag rafaelbarros/backend-user:latest rafaelbarros/backend-user:0.0.1
docker push rafaelbarros/backend-user:0.0.1
helm upgrade staging-backend-user questcode/backend-user --set image.tag=0.0.1
```

```shell
helm history staging-backend-user
helm rollback staging-backend user 1
```