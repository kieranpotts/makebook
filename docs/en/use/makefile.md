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

For the ultimate customisation of your books, you will need to edit the `Makefile` in the `src` directory. Refer to the [reference resources](reference.md) for help.
