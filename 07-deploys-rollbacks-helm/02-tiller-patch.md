# Patching Resources

# 1

```shell
helm init --service-account tiller

# helm init
# kubectl patch deployment tiller-deploy -n kube-system --patch "$(cat 02-tiller-patch.yaml)"
```