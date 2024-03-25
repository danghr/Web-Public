JEKYLL = jekyll
JEKYLL_FLAGS = --incremental

build:
	$(JEKYLL) build $(JEKYLL_FLAGS)
	@cd _site && git add . && git commit -m "Build" && git push origin
	@git add _site && git commit -m "Build" && git push origin
	read -s -p "Enter password for remote server: " PASSWD;
	@ssh danghr@console.danghr.com "cd /usr/local/lsws/www.danghr.com/html/_site && sudo git pull < $(PASSWD)"
