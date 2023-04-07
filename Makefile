BRANCH = $(shell git rev-parse --abbrev-ref HEAD)

release-dev:
	npm run release:dev --preid $(BRANCH)
	npm run publish --preid $(BRANCH)

release-prod:
	npm run release
	npm run publish