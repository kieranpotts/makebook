# Export

Follow these steps to generate EPUB, PDF and HTML bundles of you book:

1.  Power-up the virtual machine.

    From the root directory of your project (the location of the `Vagrantfile`):

    ```cli
    $ vagrant up
    ```

2.  When the guest machine is running, log into it:

    ```cli
    $ vagrant ssh
    ```

3.  You will arrive at the location `/home/vagrant/synced`. This directory is synchronised with the root directory of your project on your guest machine. See for yourself by listing the directory contents:

    ```cli
    $ ls -la
    ```

    Change to the `src` directory:

    ```cli
    $ cd src
    ```

4.  Run the following commands from the context of the `src` directory (where the `Makefile` is located):

    ```cli
    $ make epub
    $ make pdf
    $ make html
    ```

    To generate all of these in one go:

    ```cli
    $ make all
    ```

    The distributable files are created in the `dist` directory. But the books will not be regenerated if the distributable files already exist. To start a fresh build, begin by cleaning out the contents of the `dist` directory with the following command:

    ```cli
    $ make clean
    ```
