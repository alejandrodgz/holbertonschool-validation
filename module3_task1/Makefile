build: ## A website generator in ./dist directory
	apt install -y curl
	curl -L https://github.com/gohugoio/hugo/releases/download/v0.109.0/hugo_extended_0.109.0_linux-amd64.deb -o hugo.deb
	apt install ./hugo.deb
	hugo --destination ./dist

clean: ## Clean the /dist directory thoroughly
	rm -rf ./dist

post: ## make a post with title = POST_TITLE and name = POST_NAME (environ variables)
	@rm -rf content/posts/$(POST_NAME).md
	hugo new posts/$(POST_NAME).md
	sed -i 's+title.*+title: "$(POST_TITLE)"+g' content/posts/$(POST_NAME).md

help: ## show help
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'