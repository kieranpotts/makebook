# Filesystem structure

To use makebook, please use the following filesystem structure to organise your book's source code and configuration. You can see an example of this in the `eg` directory.

```
book-name               # Project root directory. You can name this whatever you like.
│
├─ dist                 # This directory will be created by `make` to store the distributable book files.
│
├─ src                  # Source files and build configuration.
│  ├─ chapters 
│  │  └─ **.md          # Markdown files, one for each chapter.
│  │
│  ├─ images 
│  │  ├─ cover.png      # Cover image for EPUB.
│  │  └─ **.png|jp(e)g  # Other images linked from the Markdown files.
│  │ 
│  ├─ styles 
│  │  └─ book.css       # Custom style sheet for the EPUB and HTML versions of the book.
│  │
│  ├─ metadata.yml      # Book metadata in the YAML format.
│  └─ Makefile          # Build configuration.
│
├─ vagrant.yaml         # Configuration file references from Vagrantfile.
└─ Vagrantfile          # Configuration for the Vagrant-controlled virtual machine.
```

You can change the filesystem structure, but if you do so you will need to change the `Makefile` configuration accordingly.

We recommend putting the `Makefile` build configuration in the `src` directory rather than the parent project root directory. That's because the paths to [images](images.md) referenced in the Markdown content will be treated by Pandoc as being relative to the working directory where the `pandoc` CLI utility is run. Pandoc acts on a stream of text without keeping track of what directory the text came from.
