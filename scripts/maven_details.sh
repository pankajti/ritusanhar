docker run -it --rm \
  -v "$PWD":/app \
  -w /app \
  maven:3.9.6-eclipse-temurin-17 \
  mvn -N io.takari:maven:wrapper
