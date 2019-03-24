docker inspect --format '{{ .NetworkSettings.IPAddress }}' gestao_cervejeira

# POSTGRES
docker run --name gestao_cervejeira -e POSTGRES_PASSWORD=pass -e POSTGRES_DB=gestao_cervejeira -d postgres

# PG-ADMIN
docker run --name pg-admin --link gestao_cervejeira:postgres -p 5050:5050 -d fenglc/pgadmin4

# Construir container, através de um DOCKERFILE
docker build -t json-schema-image .

# Inicia o container
docker run -p 8081:8081 json-schema-image

# Remove all containers
docker rm $(docker ps -a -q)

