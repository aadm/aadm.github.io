PY?=python
PELICAN?=pelican
PELICANOPTS=

BASEDIR=$(CURDIR)
INPUTDIR=$(BASEDIR)/content
OUTPUTDIR=$(BASEDIR)/output
CONFFILE=$(BASEDIR)/pelicanconf.py
PUBLISHCONF=$(BASEDIR)/publishconf.py
GITHUB_PAGES_BRANCH=gh-pages

PAGESDIR=$(INPUTDIR)/pages
DATE1 := $(shell date +'%Y-%m-%d')
DATE0 := $(shell date +'%Y_%m_%d_%H_%M_%S')
DATE := $(shell date +'%Y-%m-%d %H:%M:%S')
SLUG := $(shell echo '${NAME}' | sed -e 's/[^[:alnum:]]/-/g' | tr -s '-' | tr A-Z a-z)
EXT ?= md

DEBUG ?= 0
ifeq ($(DEBUG), 1)
	PELICANOPTS += -D
endif

RELATIVE ?= 0
ifeq ($(RELATIVE), 1)
	PELICANOPTS += --relative-urls
endif

help:
	@echo 'Makefile for a pelican Web site                                           '
	@echo '                                                                          '
	@echo 'Usage:                                                                    '
	@echo '   make html                           (re)generate the web site          '
	@echo '   make clean                          remove the generated files         '
	@echo '   make regenerate                     regenerate files upon modification '
	@echo '   make publish                        generate using production settings '
	@echo '   make serve [PORT=8000]              serve site at http://localhost:8000'
	@echo '   make serve-global [SERVER=0.0.0.0]  serve (as root) to $(SERVER):80    '
	@echo '   make devserver [PORT=8000]          start/restart develop_server.sh    '
	@echo '   make stopserver                     stop local server                  '
	@echo '   make gh                             upload web site to github/gh-pages   '
	@echo '   make ghmaster                       upload source to github '
	@echo '   make newpost NAME=whatever'
	@echo '   make newpage NAME=whatever'
	@echo '                                                                          '
	@echo 'Set the DEBUG variable to 1 to enable debugging, e.g. make DEBUG=1 html   '
	@echo 'Set the RELATIVE variable to 1 to enable relative urls                    '
	@echo '                                                                          '

html:
	$(PELICAN) $(INPUTDIR) -o $(OUTPUTDIR) -s $(CONFFILE) $(PELICANOPTS)

publish:
	$(PELICAN) $(INPUTDIR) -o $(OUTPUTDIR) -s $(PUBLISHCONF) $(PELICANOPTS)

clean:
	[ ! -d $(OUTPUTDIR) ] || rm -rf $(OUTPUTDIR)

regenerate:
	$(PELICAN) -r $(INPUTDIR) -o $(OUTPUTDIR) -s $(CONFFILE) $(PELICANOPTS)

serve:
	[ ! -d $(OUTPUTDIR) ] || rm -rf $(OUTPUTDIR)
	$(PELICAN) $(INPUTDIR) -o $(OUTPUTDIR) -s $(CONFFILE) $(PELICANOPTS)
ifdef PORT
	cd $(OUTPUTDIR) && $(PY) -m pelican.server $(PORT)
else
	cd $(OUTPUTDIR) && $(PY) -m pelican.server
endif

serve-global:
ifdef SERVER
	cd $(OUTPUTDIR) && $(PY) -m pelican.server 80 $(SERVER)
else
	cd $(OUTPUTDIR) && $(PY) -m pelican.server 80 0.0.0.0
endif

devserver:
ifdef PORT
	$(BASEDIR)/develop_server.sh restart $(PORT)
else
	$(BASEDIR)/develop_server.sh restart
endif

stopserver:
	$(BASEDIR)/develop_server.sh stop
	@echo 'Stopped Pelican and SimpleHTTPServer processes running in background.'

gh:	publish
	ghp-import -m "Generate Pelican site $(DATE0)" -b $(GITHUB_PAGES_BRANCH) $(OUTPUTDIR)
	git push origin $(GITHUB_PAGES_BRANCH)

ghmaster:
	git add -A
	git commit -m "Update $(DATE0)"
	git push

newpost:
ifdef NAME
	@echo "Title: $(NAME)" >  $(INPUTDIR)/$(DATE1)-$(SLUG).$(EXT)
	@echo "Date: $(DATE)" >> $(INPUTDIR)/$(DATE1)-$(SLUG).$(EXT)
	@echo "Slug: $(SLUG)" >> $(INPUTDIR)/$(DATE1)-$(SLUG).$(EXT)
	@echo "Tags:"         >> $(INPUTDIR)/$(DATE1)-$(SLUG).$(EXT)
	@echo "Status: draft" >> $(INPUTDIR)/$(DATE1)-$(SLUG).$(EXT)
	@echo ""              >> $(INPUTDIR)/$(DATE1)-$(SLUG).$(EXT)
	@echo ""              >> $(INPUTDIR)/$(DATE1)-$(SLUG).$(EXT)
	@echo "<!-- PELICAN_END_SUMMARY -->" >> $(INPUTDIR)/$(DATE1)-$(SLUG).$(EXT)
	@echo ""              >> $(INPUTDIR)/$(DATE1)-$(SLUG).$(EXT)
	${EDITOR} ${INPUTDIR}/$(DATE1)-${SLUG}.${EXT} &
else
	@echo 'Variable NAME is not defined.'
	@echo 'Do make newpost NAME='"'"'Post Name'"'"
endif

newpage:
ifdef NAME
	@echo "Title: $(NAME)" >  $(PAGESDIR)/$(SLUG).$(EXT)
	@echo "Slug: $(SLUG)" >> $(PAGESDIR)/$(SLUG).$(EXT)
	@echo ""              >> $(PAGESDIR)/$(SLUG).$(EXT)
	@echo ""              >> $(PAGESDIR)/$(SLUG).$(EXT)
	${EDITOR} ${PAGESDIR}/${SLUG}.$(EXT)
else
	@echo 'Variable NAME is not defined.'
	@echo 'Do make newpage NAME='"'"'Page Name'"'"
endif


.PHONY: html help clean regenerate serve serve-global devserver publish gh ghmaster newpage newpost
