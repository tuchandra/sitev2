# Makefile for site deployment
#
# MSG is the commit message to use; invoke with
#   make deploy MSG="Add blog post on XXX"
# if you want to change it

DESTDIR=site
MSG=Update site

.PHONY: all
all: clean serve site deploy

.PHONY: install
install:
	@echo "Installing NPM dependencies"
	cd themes/windy && npm install

.PHONY: clean
clean:
	@echo "Cleaning old build"
	cd $(DESTDIR) && rm -rf *

.PHONY: pull
pull: clean
	@echo "Pulling newest version of site"
	git pull & cd $(DESTDIR) && git pull

.PHONY: serve
serve: clean
	@echo "Starting Hugo server, including drafts and future posts"
	hugo -DF server

.PHONY: preview
preview: clean
	@echo "Starting Hugo server as if it were deployed now"
	hugo server

.PHONY: site
site: clean install
	@echo "Building new site"
	cd themes/windy && npm run build
	hugo -d $(DESTDIR)
	echo "tusharc.dev" >> $(DESTDIR)/CNAME

.PHONY: deploy
deploy: pull site
	@echo "Deploying new site"

	cd $(DESTDIR) \
	&& git add . \
	&& git commit -m "$(MSG)" \
	&& git push
