docker inspect --format '{{ .NetworkSettings.IPAddress }}' gestao_cervejeira

# POSTGRES
docker run --name gestao_cervejeira -e POSTGRES_PASSWORD=pass -e POSTGRES_DB=gestao_cervejeira -d postgres

# PG-ADMIN
docker run --name pg-admin --link gestao_cervejeira:postgres -p 5050:5050 -d fenglc/pgadmin4

