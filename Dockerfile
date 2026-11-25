# 运行阶段：只需要 JRE，镜像更小
FROM eclipse-temurin:21-jre

WORKDIR /app

# 拷贝 Maven 构建好的可执行 jar
COPY target/docker-demo.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "/app/app.jar"]
