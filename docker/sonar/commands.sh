docker pull sonarqube

docker run -d --name sonarqube -p 9000:9000 sonarqube

mvn sonar:sonar

#Initial login
admin
admin