postgres:
  docker run --name postgres -p 5432:5432 -e POSTGRES_USER=root -e POSTGRES_PASSWORD=<password> -d postgres:latest

createdb:
  docker exec -it postgres createdb --username=root --owner=root simple_bank

dropdb:
   docker exec -it postgres drobdb simple_bank

.PHONY: postgres createdb dropdb
