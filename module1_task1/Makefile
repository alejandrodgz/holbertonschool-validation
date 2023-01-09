space=$(subst ,, )
bar=$(subst $(space),-,$(POST_TITLE))

Build:
	hugo --destination ./dist

Clean:
	rm -r ./dist
Post:
	@rm content/posts/$(POST_NAME).md
	hugo new posts/$(bar)/$(POST_NAME).md
	@mv content/posts/$(bar)/$(POST_NAME).md  content/posts/
	@rm -r content/posts/$(bar)