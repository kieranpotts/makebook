# Images

You can use standard Markdown syntax to create images with captions:

```md
![Textual description.](images/filename.png)
```

The path to the file must be relative to the location of the `Makefile`. This is because Pandoc will automatically include images when generating EPUB and PDF documents, and when it does so it will follow the image links from the directory where the `pandoc` command is executed.

Pandoc supports an extended Markdown syntax to support resizing of images:

```md
![Textual description.](images/filename.png){ width=50% height=50% }
```

You can also use LaTeX labels to create cross-references to images:

```md
For an example, see Figure \ref{unique_image_id}.

![Textual description.\label{unique_image_id}](images/filename.png)
```
