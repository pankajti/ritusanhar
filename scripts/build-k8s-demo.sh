#!/bin/bash

SERVICE="k8s-demo-service"
APP_PATH="apps/$SERVICE"

cd $APP_PATH

echo "🔥 Building $SERVICE JAR..."
./mvnw clean package

echo "🐳 Building Docker image..."
docker build -t $SERVICE:1.0 .

echo "✔ Build completed."
