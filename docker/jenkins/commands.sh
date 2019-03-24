docker pull jenkins/jenkins:lts

docker run -p 8080:8080 -p 50000:50000 -v jenkins_home:/var/jenkins_home --name jenkins_tutorial jenkins/jenkins:lts

#Initial Key
3f3143fa929f4313b47a59200b1cb978