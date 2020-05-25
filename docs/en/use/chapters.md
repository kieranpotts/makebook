# Chapters

Each chapter of your book should be a single Markdown file. 

On build, the Markdown files will be concatenated into one long book script. The chapters will be ordered automatically by name, so it is recommended to use numeric prefixes to set the order of your chapters:

```
chapters/01-introduction.md
chapters/02-installation.md
chapters/03-usage.md
chapters/04-references.md
```

Each chapter should begin with a level one heading:

```md
# Chapter name

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate mollis rutrum. Suspendisse volutpat efficitur urna, lacinia vulputate enim tincidunt sit amet.

Duis non lacinia est, ac vestibulum nunc. Duis sagittis pharetra nibh sit amet porta. Curabitur ornare nulla non venenatis tempor. Praesent quam justo, iaculis vel dolor at, iaculis dictum odio. Duis sit amet lorem felis. Ut finibus elit quis eros sagittis, tempus molestie sapien rhoncus.
```

See the `eg/src/chapters` directory for an example structure.
