include .env

run:
	go run cmd/api/main.go

db-status:
	GOOSE_DRIVER=postgres GOOSE_DBSTRING=$(POSTGRES_DSN) goose -dir=$(GOOSE_MIGRATION_DIR) status

up:
	GOOSE_DRIVER=postgres GOOSE_DBSTRING=$(POSTGRES_DSN) goose -dir=$(GOOSE_MIGRATION_DIR) up

down:
	GOOSE_DRIVER=postgres GOOSE_DBSTRING=$(POSTGRES_DSN) goose -dir=$(GOOSE_MIGRATION_DIR) down

reset:
	GOOSE_DRIVER=postgres GOOSE_DBSTRING=$(POSTGRES_DSN) goose -dir=$(GOOSE_MIGRATION_DIR) reset

upsert-env:
	sed 's/=.*/=/' .env > .env.example