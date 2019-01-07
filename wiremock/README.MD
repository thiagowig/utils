# WIREMOCK DOCKER

## COMMANDS

### Build image
docker build -t wiremock-apis .

### Run container
docker run -p 9999:8080 --name wiremock-apis -t wiremock-apis

### See logs
docker logs wiremock-apis
