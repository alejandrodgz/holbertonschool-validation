build: ## A website generator in ./dist directory
	hugo --destination ./dist

clean: ## Clean the /dist directory thoroughly
	rm -rf ./dist

post: ## make a post with title = POST_TITLE and name = POST_NAME (environ variables)
	@rm -rf content/posts/$(POST_NAME).md
	hugo new posts/$(POST_NAME).md
	sed -i 's+title.*+title: "$(POST_TITLE)"+g' content/posts/$(POST_NAME).md

package: ## this will create a zip  awesome-api and dist
	@zip -r awesome-website.zip awesome-api ./dist

lint: ##lint all md files
	markdownlint "*.md"

help: ## show help
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'