kubectl create namespace dynatrace
kubectl apply -f https://raw.githubusercontent.com/mldelaro/dynatrace-operator/main/kubernetes.yaml
kubectl -n dynatrace wait pod --for=condition=ready --selector=app.kubernetes.io/name=dynatrace-operator,app.kubernetes.io/component=webhook --timeout=300s
kubectl apply -f dynakube.yaml