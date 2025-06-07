run:
	docker compose up

ingest:
	docker exec -it deus-rag_api-1 python ingest.py

build-ui:
	cd ui-core && pnpm install && pnpm run build