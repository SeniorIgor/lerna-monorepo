BRANCH = $(shell git rev-parse --abbrev-ref HEAD)

release-dev:
	npx lerna version --conventional-commits --conventional-prerelease --no-changelog --no-commit-hooks --yes --preid $(BRANCH)
# npx lerna version prerelease --no-changelog --no-commit-hooks --yes --preid $(BRANCH)
	npx lerna publish from-package --yes --preid $(BRANCH)

release-prod:
	npx lerna version --conventional-commits --no-commit-hooks --yes
	npx lerna publish from-package --yes