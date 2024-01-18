################################################################################
#
# CONFIGURATION
#
################################################################################

METADATA_FILE = metadata.yml
CHAPTERS_GLOB = chapters/*.md
CSS_DIR = styles
CSS_FILE = $(CSS_DIR)/book.css
IMAGES_DIR = images
IMAGES_GLOB = $(IMAGES_DIR)/*
COVER_IMAGE = $(IMAGES_DIR)/cover.png

DIST_DIR = ../dist
BOOK_FILENAME = book

PANDOC_ARGS = --toc --toc-depth=2 --css=$(CSS_FILE) --metadata-file=$(METADATA_FILE)
EXTRA_PDF_ARGS = -V geometry:margin=1in -V documentclass=report --pdf-engine=xelatex

################################################################################
#
# BASIC ACTIONS
#
################################################################################

all:	book

book:	epub html pdf

clean:
	rm -r $(DIST_DIR)

################################################################################
#
# FILE BUILDERS
#
################################################################################

epub:	$(DIST_DIR)/epub/$(BOOK_FILENAME).epub

html:	$(DIST_DIR)/html/$(BOOK_FILENAME).html

pdf:	$(DIST_DIR)/pdf/$(BOOK_FILENAME).pdf

$(DIST_DIR)/epub/$(BOOK_FILENAME).epub:	$(METADATA_FILE) $(CHAPTERS_GLOB) \
    $(CSS_FILE)  $(COVER_IMAGE)
	mkdir -p $(DIST_DIR)/epub
	pandoc $(PANDOC_ARGS) --epub-cover-image=$(COVER_IMAGE) -o $@ $(CHAPTERS_GLOB)
	@echo "$@ was built"

$(DIST_DIR)/html/$(BOOK_FILENAME).html:	$(METADATA_FILE) $(CHAPTERS_GLOB) \
    $(CSS_FILE) $(IMAGES_GLOB)
	mkdir -p $(DIST_DIR)/html
	mkdir -p $(DIST_DIR)/html/$(IMAGES_DIR)
	cp -R $(IMAGES_DIR)/ $(DIST_DIR)/html/
	mkdir -p $(DIST_DIR)/html/$(CSS_DIR)
	cp $(CSS_FILE) $(DIST_DIR)/html/$(CSS_DIR)/
	pandoc $(PANDOC_ARGS) --standalone --to=html5 -o $@ $(CHAPTERS_GLOB)
	@echo "$@ was built"

$(DIST_DIR)/pdf/$(BOOK_FILENAME).pdf:	$(METADATA_FILE) $(CHAPTERS_GLOB) \
   $(CSS_FILE)
	mkdir -p $(DIST_DIR)/pdf
	pandoc $(PANDOC_ARGS) $(EXTRA_PDF_ARGS) -o $@ $(CHAPTERS_GLOB)
	@echo "$@ was built"
