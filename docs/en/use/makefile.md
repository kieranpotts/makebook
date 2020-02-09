# Makefile

Rather than calling the `pandoc` CLI utility directly, the `pandoc` commands have been abstracted away behind simple `make` commands. So, instead of typing the following commands to generate PDFs:

```sh
$ mkdir -p ../dist/pdf
$ pandoc --toc --toc-depth=2 --css=styles/book.css --metadata-file=metadata.yml -V geometry:margin=1in -V documentclass=report --pdf-engine=xelatex -o ../dist/pdf/book.pdf chapters/*.md
```

You just type this:

```sh
$ make pdf
```

For the ultimate customisation of your books, you will need to edit `Makefile`, which encapsulates the build configuration.

The following references provide all the documentation you need.

- [Pandoc Manual](http://pandoc.org/MANUAL.html)
- [learnbyexample: Customizing Pandoc to Generate Beautiful PDFs from Markdown](https://learnbyexample.github.io/tutorial/ebook-generation/customizing-pandoc/)
- [Sitepoint: Creating PDFs from Markdown with Pandoc and LaTeX](https://www.sitepoint.com/creating-pdfs-from-markdown-with-pandoc-and-latex/)
- [An Introduction to Makefiles](https://www.gnu.org/software/make/manual/html_node/Introduction.html)
