#!/bin/bash

echo "♻️ Restarting deployment..."
kubectl rollout restart deployment k8s-demo-service
kubectl rollout status deployment/k8s-demo-service
