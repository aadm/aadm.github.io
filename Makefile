PY?=python
PELICAN?=pelican
PELICANOPTS=

BASEDIR=$(CURDIR)
INPUTDIR=$(BASEDIR)/content
OUTPUTDIR=$(BASEDIR)/output
CONFFILE=$(BASEDIR)/pelicanconf.py
PUBLISHCONF=$(BASEDIR)/publishconf.py
GITHUB_PAGES_BRANCH=master
EDITOR=code

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
	@echo 'Makefile for aadm.github.io'
	@echo ' '
	@echo 'Usage:                                                                    '
	@echo '   make site                    (re)generate the web site'
	@echo '   make clean                   remove the generated files'
	@echo '   make publish                 generate using production settings '
	@echo '   make localsite               launch site at  http://localhost:8000'
	@echo '   make gh                      push site & source to github'
	@echo '   make ghsrc                   push source code to github'
	@echo '   make newpost NAME=whatever'
	@echo '   make newpage NAME=whatever'
	@echo '                                                                          '
	@echo 'Set the DEBUG variable to 1 to enable debugging, e.g. make DEBUG=1 html   '
	@echo 'Set the RELATIVE variable to 1 to enable relative urls                    '
	@echo ' '

site:
	$(PELICAN) $(INPUTDIR) -o $(OUTPUTDIR) -s $(CONFFILE) $(PELICANOPTS)

publish:
	$(PELICAN) $(INPUTDIR) -o $(OUTPUTDIR) -s $(PUBLISHCONF) $(PELICANOPTS)

clean:
	[ ! -d $(OUTPUTDIR) ] || rm -rf $(OUTPUTDIR)

localsite:
	$(PELICAN) $(INPUTDIR) -o $(OUTPUTDIR) -s $(CONFFILE) --listen -r 

gh: publish
	ghp-import -m "Generate Pelican site $(DATE0)" -b $(GITHUB_PAGES_BRANCH) $(OUTPUTDIR)
	git push origin $(GITHUB_PAGES_BRANCH)
	git add -A
	git commit -a -m 'Source archive $(DATE)'
	git push origin source

ghsrc: clean
	git add -A
	git commit -a -m 'Source archive $(DATE)'
	git push origin source

newpost:
ifdef NAME
	@echo "Title: $(NAME)" >  $(INPUTDIR)/$(DATE1)-$(SLUG).$(EXT)
	@echo "Date: $(DATE)" >> $(INPUTDIR)/$(DATE1)-$(SLUG).$(EXT)
	@echo "Slug: $(SLUG)" >> $(INPUTDIR)/$(DATE1)-$(SLUG).$(EXT)
	@echo "Tags:"         >> $(INPUTDIR)/$(DATE1)-$(SLUG).$(EXT)
	@echo "Lang: en"      >> $(INPUTDIR)/$(DATE1)-$(SLUG).$(EXT)
	@echo "Status: draft" >> $(INPUTDIR)/$(DATE1)-$(SLUG).$(EXT)
	@echo "related_posts:">> $(INPUTDIR)/$(DATE1)-$(SLUG).$(EXT)
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
	${EDITOR} ${PAGESDIR}/${SLUG}.$(EXT) &
else
	@echo 'Variable NAME is not defined.'
	@echo 'Do make newpage NAME='"'"'Page Name'"'"
endif

.PHONY: html help clean regenerate serve serve-global devserver publish gh ghsrc newpage newpost