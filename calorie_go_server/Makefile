dev:
	docker compose up --build --detach
	dart bin/main.dart --apply-migrations

gen:
	serverpod generate

migrate:
	dart run bin/main.dart --role maintenance --apply-migrations
