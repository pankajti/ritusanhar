#!/bin/bash

for service in apps/*; do
  if [ -f "$service/pom.xml" ]; then
    echo "🔥 Building $(basename $service)..."
    (cd $service && ./mvnw clean package)
  fi
done
