# Patching Resources

# 1

```shell
kubectl patch deployment tiller-deploy -n kube-system --patch "$(cat 02-tiller-patch.yaml)"
```