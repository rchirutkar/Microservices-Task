# echo "Deploying the user-service to Kubernetes cluster"
# kubectl apply -f .\deployments\user-service.yaml
# kubectl apply -f .\services\user-service.yaml

echo "Deploying the product-service to Kubernetes cluster"
kubectl apply -f .\\deployments\\product-service.yaml
kubectl apply -f .\\services\\product-service.yaml

echo "Deploying the order-service to Kubernetes cluster"
kubectl apply -f .\\deployments\\order-service.yaml
kubectl apply -f .\\services\\order-service.yaml

echo "Deploying the gateway-service to Kubernetes cluster"
kubectl apply -f .\\deployments\\gateway-service.yaml
kubectl apply -f .\\services\\gateway-service.yaml

echo "Checking the status of deployments, pods, and services"
kubectl get deployments 
kubectl get pods
kubectl get svc 