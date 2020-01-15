# Makefile for site deployment
#
# MSG is the commit message to use; invoke with
#   make deploy MSG="Add blog post on XXX"
# if you want to change it

DESTDIR=site
MSG=Update site

.PHONY: all
all: clean serve site deploy

clean:
	@echo "Cleaning old build"
	cd $(DESTDIR) && rm -rf *

pull: clean
	@echo "Pulling newest version of site"
	cd $(DESTDIR) && git pull

serve: clean
	@echo "Starting Hugo server"
	hugo -DF server

site: clean
	@echo "Building new site"
	hugo -d $(DESTDIR)
	echo "tusharc.dev" >> $(DESTDIR)/CNAME

deploy: pull site
	@echo "Deploying new site"

	cd $(DESTDIR) \
	&& git add . \
	&& git commit -m "$(MSG)" \
	&& git push
