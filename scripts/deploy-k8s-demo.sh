#!/bin/bash

echo "🚀 Deploying k8s-demo-service to Kubernetes..."
kubectl apply -f k8s/base/k8s-demo-service/
kubectl rollout status deployment/k8s-demo-service
