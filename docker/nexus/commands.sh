docker pull sonatype/nexus3

docker run -d -p 8081:8081 --name nexus sonatype/nexus3

curl -u admin:admin123 http://localhost:8081/service/metrics/ping