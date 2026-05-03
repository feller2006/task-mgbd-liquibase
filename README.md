\# Taller MGBD - Liquibase



\## Validación con Docker



```bash

git clone https://github.com/feller2006/task-mgbd-liquibase.git

cd task-mgbd-liquibase



docker compose down -v

docker compose up -d db



docker compose run --rm liquibase validate

docker compose run --rm liquibase update

docker compose run --rm liquibase status --verbose



docker compose exec db psql -U postgres -d mgbd\_liquibase -c "\\dt"

docker compose exec db psql -U postgres -d mgbd\_liquibase -c "SELECT \* FROM persona;"

docker compose exec db psql -U postgres -d mgbd\_liquibase -c "SELECT \* FROM factura;"



\## Tablas creadas

\- persona, rol, usuario, producto, factura, detalle\_factura



