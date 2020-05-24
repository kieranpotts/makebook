# Filesystem structure

Please use the following filesystem structure for your book:

```
book-name/              # Project root directory. Name this whatever you like.
|- dist/                # This directory will be created by `make` to store the distributable book files.
|- src/                 # Book source files and build configuration.
|  |- chapters/
|  |  |- **.md          # Markdown files, one for each chapter.
|  |- images/
|  |  |- cover.png      # Cover image for EPUB.
|  |  |- **.png|jp(e)g  # Other images linked from the Markdown files.
|  |- styles/
|  |  |- book.css       # Custom style sheet for your book.
|  |- metadata.yml      # Book metadata in the YAML format.
|  |- Makefile          # Build configuration.
```

You can change the filesystem structure, but if you do so you will need to change the `Makefile` configuration accordingly.

We recommend putting the `Makefile` build configuration in the `src` directory rather than the parent project root directory. That's because the paths to [images](images.md) referenced in the Markdown content will be treated by Pandoc as being relative to the working directory where the `pandoc` CLI utility is run. Pandoc acts on a stream of text without keeping track of what directory the text came from.
