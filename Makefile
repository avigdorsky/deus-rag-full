run:
	docker compose up

ingest:
	docker exec -it deus-rag_api-1 python ingest.py

build-ui:
	cd ui-core && pnpm install && pnpm run build

deploy:
	git add .
	git commit -m "Update from $(shell date '+%Y-%m-%d %H:%M:%S')"
	git push origin main

status:
	git status