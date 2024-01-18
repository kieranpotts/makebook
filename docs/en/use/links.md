# Links

Markdown anchor links can be used to create links between chapters within a book:

```md
# Introduction

For more information, check the [Usage] chapter.
```

```md
# Usage

...
```

The reference is to the section title, not the chapter's Markdown file. Indeed, the same syntax is used to create links to sections _within_ the same chapter:

```md
# Introduction

## First section

For more information, check the [Second section].

## Second section

Following on from the [First section], ...
```

Internal linking works only if all sections throughout the book have unique titles.

You can use extended anchor markup to change the linking text, so it does not have to match the name of the linked chapter. Anchor names (after the `#` character) need to be downcased, with spaces, colon, semicolons and other special characters swapped for hyphens. For example, a section titled "A New Era" can be referenced using the anchor `#a-new-era`.

```md
For more information, check out [the next chaper](#usage).
```
