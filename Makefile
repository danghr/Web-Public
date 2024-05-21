JEKYLL = jekyll
JEKYLL_FLAGS = --incremental

SERVER = danghr@console.danghr.com

build:
	$(JEKYLL) build $(JEKYLL_FLAGS)
	@cd _site && git add . && git commit -m "Build" && git push origin
	@git add _site && git commit -m "Build" && git push origin

update: build
	$(shell ssh $(SERVER) "sudo bash ~/update_web.sh")
