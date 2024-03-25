JEKYLL = jekyll
JEKYLL_FLAGS = 

build:
	$(JEKYLL) build $(JEKYLL_FLAGS)
	@cd _site && git add . && git commit -m "Build" && git push origin
	@cd .. && git add _site && git commit -m "Build" && git push origin
