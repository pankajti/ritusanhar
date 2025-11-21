#!/bin/bash

kubectl port-forward svc/k8s-demo-service 8080:8080

kubectl port-forward svc/postgres 5432:5432
