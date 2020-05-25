# Makefile

Rather than calling the `pandoc` CLI utility directly, the `pandoc` commands have been abstracted away behind simple `make` commands. So, instead of typing the following commands to generate PDFs:

```cli
$ mkdir -p ../dist/pdf
$ pandoc --toc --toc-depth=2 --css=styles/book.css --metadata-file=metadata.yml \
    -V geometry:margin=1in -V documentclass=report --pdf-engine=xelatex \
    -o ../dist/pdf/book.pdf chapters/*.md
```

You just type this:

```cli
$ make pdf
```

For the ultimate customisation of your books, you will need to edit the `Makefile` in the `src` directory. To make changes to the build configuration, refer to the documentation for Makefiles and Pandoc:

- [An Introduction to Makefiles](https://www.gnu.org/software/make/manual/html_node/Introduction.html)
- [Pandoc Manual](http://pandoc.org/MANUAL.html)
