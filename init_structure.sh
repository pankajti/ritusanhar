#!/bin/bash

echo "🚀 Initializing ritusanhar repository structure..."

# Root-level folders
mkdir -p apps
mkdir -p k8s/base
mkdir -p k8s/kafka
mkdir -p scripts
mkdir -p docs/architecture
mkdir -p docs/diagrams
mkdir -p docs/api-specs

# Placeholder apps (you will fill these later)
mkdir -p apps/k8s-demo-service
mkdir -p apps/monitored-service
mkdir -p apps/metrics-processor
mkdir -p apps/alert-service

# Kubernetes manifests for each service
mkdir -p k8s/base/k8s-demo-service
mkdir -p k8s/base/monitored-service
mkdir -p k8s/base/metrics-processor
mkdir -p k8s/base/alert-service
mkdir -p k8s/base/postgres

# Kafka Helm values example
cat <<EOF > k8s/kafka/values.yaml
# Kafka Helm chart values placeholder
replicaCount: 1
persistence:
  enabled: false
zookeeper:
  replicaCount: 1
EOF

# Namespaces YAML
cat <<EOF > k8s/namespaces.yaml
apiVersion: v1
kind: Namespace
metadata:
  name: monitoring-system
EOF

# Ingress placeholder
cat <<EOF > k8s/ingress.yaml
# Ingress placeholder
apiVersion: networking.k8s.io/v1
kind: Ingress
metadata:
  name: ritusanhar-ingress
spec:
  rules: []
EOF

# Script placeholders
cat <<EOF > scripts/build-all.sh
#!/bin/bash
echo "Building all Spring Boot services..."
# Add mvnw commands here
EOF
chmod +x scripts/build-all.sh

cat <<EOF > scripts/deploy-all.sh
#!/bin/bash
echo "Deploying all Kubernetes resources..."
kubectl apply -f k8s/namespaces.yaml
kubectl apply -f k8s/base/
EOF
chmod +x scripts/deploy-all.sh

cat <<EOF > scripts/delete-all.sh
#!/bin/bash
echo "Deleting all Kubernetes resources..."
kubectl delete -f k8s/base/
kubectl delete -f k8s/namespaces.yaml
EOF
chmod +x scripts/delete-all.sh

# README files for each folder
echo "# Spring Boot application folder" > apps/k8s-demo-service/README.md
echo "# Spring Boot application folder" > apps/monitored-service/README.md
echo "# Spring Boot application folder" > apps/metrics-processor/README.md
echo "# Spring Boot application folder" > apps/alert-service/README.md

# README at root level
cat <<EOF > README.md
# ritusanhar

A collection of Spring Boot microservices deployed using Kubernetes.

## Structure

- apps/ → All Spring Boot applications
- k8s/ → Kubernetes manifests for each service
- scripts/ → Utilities to build & deploy services
- docs/ → Architecture diagrams, notes

You can deploy everything to Kubernetes using:

\`\`\`
./scripts/deploy-all.sh
\`\`\`
EOF

# Add a useful .gitignore
cat <<EOF > .gitignore
# Java
*.class

# Maven
target/
*.jar
*.war
*.ear

# IntelliJ
.idea/
*.iml
out/

# OS
.DS_Store

# Kubernetes
*.log
EOF

echo "🎉 Structure created successfully!"
