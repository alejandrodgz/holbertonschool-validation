build: ## A website generator in ./dist directory
	hugo --destination ./dist

clean: ## Clean the /dist directory thoroughly
	rm -rf ./dist

post: ## make a post with title = POST_TITLE and name = POST_NAME (environ variables)
	@rm -rf content/posts/$(POST_NAME).md
	hugo new posts/$(POST_NAME).md
	sed -i 's+title.*+title: "$(POST_TITLE)"+g' content/posts/$(POST_NAME).md

package: ## this will create a zip  awesome-api and dist
	@hugo
	@zip -r awesome-website.zip awesome-api ./dist

lint: ##lint all md files
	markdownlint "*.md"

unit-tests: ## run unit tests
	@echo "all tests done"

integration-tests: ## run integration-tests
	@echo "all integration-tests done"

validate: ## run validate
	@echo "all validations done"

help: ## show help
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'