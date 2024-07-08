dev:
	docker compose up --build --detach
	dart bin/main.dart --apply-migrations

gen:
	serverpod generate

migrate:
	serverpod create-migration