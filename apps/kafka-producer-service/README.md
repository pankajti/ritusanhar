## Steps to Run

docker run -it --rm \
-v "$PWD":/app \
-w /app \
maven:3.9.6-eclipse-temurin-17 \
mvn -N io.takari:maven:wrapper


docker build -t kafka-producer-service:1.0 .



kubectl apply -f "https://strimzi.io/install/latest?namespace=kafka" -n kafka

docker build -t kafka-producer-service:1.0 .
kubectl rollout restart deployment kafka-producer-service