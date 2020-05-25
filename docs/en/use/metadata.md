# Metadata

The file `eg/src/metadata.yml` provides metadata for your book in the YAML data interchange format. This metadata is passed to the `pandoc` utility, which is responsible for generating books from your source content.

The YAML configuration block must start and end with `---`.

```yml
---
title: My Book Title
author: Harry A Potter
rights: MIT License
language: en-GB
tags: [book, test, etc]
abstract: |
  A short summary of the book.
mainfont: DejaVu Sans
---
```

See the [Pandoc documentation](http://pandoc.org/MANUAL.html#extension-yaml_metadata_block) for a full list of available metadata keys.
