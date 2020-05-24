# Links

Markdown anchor links can be use to create links between chapters within the book:

```md
# Introduction

For more information, check the [Usage] chapter.
```

```md
# Usage

...
```

The reference is to the section title, not the chapter's Markdown file. Thus, the same syntax is used to create links to sections within the same chapter:

```md
# Introduction

## First section

For more information, check the [Second Section].

## Second section

...
```

Internal linking works only if all sections throughout the book have unique titles.

You can use extended anchor markup to change the linking text:

```md
For more information, check out [the next chaper](#usage).
```

Anchor names after the `x` should be downcased, and spaces, colons, semicolons and other special characters should be replaced with hyphens. For eaxample, a section titled "A New Era" can be referenced using the anchor name `#a-new-era`.
