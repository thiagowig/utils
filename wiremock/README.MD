#WIREMOCK DOCKER

## COMMANDS

docker build -t wiremock-apis .

docker run -p 9999:8080 --name wiremock-apis -t wiremock-apis
