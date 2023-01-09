space=$(subst ,, )
bar=$(subst $(space),-,$(POST_TITLE))

build:
	hugo --destination ./dist

clean:
	rm -r ./dist

post:
ifeq (,$(wildcard ./content/posts/$(POST_NAME).md))
    @rm content/posts/$(POST_NAME).md
	hugo new posts/$(bar)/$(POST_NAME).md
	@mv content/posts/$(bar)/$(POST_NAME).md  content/posts/
	@rm -r content/posts/$(bar)
else
	@rm content/posts/$(POST_NAME).md
	hugo new posts/$(bar)/$(POST_NAME).md
	@mv content/posts/$(bar)/$(POST_NAME).md  content/posts/
	@rm -r content/posts/$(bar)
endif