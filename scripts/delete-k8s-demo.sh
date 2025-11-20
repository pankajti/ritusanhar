#!/bin/bash

echo "🗑️ Deleting k8s-demo-service..."
kubectl delete -f k8s/base/k8s-demo-service/
