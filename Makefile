JEKYLL = jekyll
JEKYLL_FLAGS = 

build:
	$(JEKYLL) build $(JEKYLL_FLAGS)
	@cd _site && pwd && git add . && git commit -m "Build" && git push origin
	@cd .. && pwd && git add _site && git commit -m "Build" && git push origin
