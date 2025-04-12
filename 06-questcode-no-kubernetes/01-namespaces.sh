#!/bash/sh
kubectl apply -f 01-namespaces.yaml
echo "### listando namespaces ###"
kubectl get ns