# Exporting

To generate PDF, EPUB and HTML bundles of you book, run the following commands from the context of the `src` directory (where the `Makefile` is located):

```sh
$ make pdf
$ make epub
$ make html
```

To generate all of these in one go:

```sh
$ make book
```

The distributable files are created in the `dist` directory. But the books will not be regenerated if the distributable files already exist. To start a fresh build, begin by cleaning out the contents of the `dist` directory with the following command:

```sh
$ make clean
```
