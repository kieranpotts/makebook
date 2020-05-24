# Export

To generate PDF, EPUB and HTML bundles of you book, first power-up the virtual machine. From the root directory of your project (the location of the `Vagrantfile`):

```sh
$ vagrant up
```

When the guest machine is running, log into it:

```sh
$ vagrant ssh
```

You will arrive at the location `/home/vagrant/synced`. This directory is synchronised with the root directory of your project on your guest machine. See for yourself by listing the directory contents:

```sh
% ls -la
```

Change to the `src` directory:

```sh
$ cd src
```

Run the following commands from the context of the `src` directory (where the `Makefile` is located):

```sh
$ make pdf
$ make epub
$ make html
```

To generate all of these in one go:

```sh
$ make all
```

The distributable files are created in the `dist` directory. But the books will not be regenerated if the distributable files already exist. To start a fresh build, begin by cleaning out the contents of the `dist` directory with the following command:

```sh
$ make clean
```
