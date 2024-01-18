# Test

Having [built](build.md) a new version of the Vagrant box, you should throughly test it before [deploying](deploy.md) the new release.

1.  Add the newly-generated `.box` file to your current VM provider (VirtualBox). Append `-test` to the name of the box to distinguish it from the production version. Use the `--force` flag to update any earlier versions of the test box you may have installed previously.

    Change to this project's root directory, then:

    ```cli
    $ vagrant box add --force kieranpotts/makebook-test dist/makebook.box
    ```

    Result:

    ```
    Successfully added box 'kieranpotts/makebook-test' (v0) for 'virtualbox'!
    ```

2.  Change to the `test` directory.

    ```cli
    $ cd test
    ```

    Check that the `vagrant.yaml` in the `test` directory references `kieranpotts/makebook-test`, like this:

    ```
    # The name of the base box.
    box: kieranpotts/makebook-test
    ```

    Destroy previous builds of the test box.

    ```cli
    $ vagrant destroy
    ```

    To be sure, delete the `test/.vagrant` directory, too.

    ```cli
    $ rm -R .vagrant
    ```

3.  Reprovision the test box from scatch by running the following command from the `test` directory.

    ```cli
    $ vagrant up --provision
    ```

4.  When the provisioning is complete, login to the running guest machine.

    ```
    $ vagrant ssh
    ```

    Your default location inside the VM will be `/home/vagrant/synced`. This directory is synced with the `test` directory on the host machine. See for yourself:

    ```cli
    $ ls -la
    ```

    Change to the `book` directory.

    ```cli
    $ cd book
    ```

    This directory contains source files and a minimal configuration from which to generate a book. 

    ```cli
    $ ls -la
    ```

    Run the following commands to generate books in various file formats from the source files.

    ```cli
    $ make pdf
    $ make epub
    $ make html
    ```

    Or, to make all of them in one go:

    ```cli
    $ make all
    ```

    Books are built to the `dist` directory, in the same parent directory as `src`. Before rebuilding any books, you will need to empty this directory again:

    ```cli
    $ make clean
    ```

5.  Exit the VM and power it down:

    ```cli
    $ exit
    $ vagrant halt
    ```

If the tests are successfully, optionally you can [deploy](deploy.md) the new build of the box to Vagrant Cloud.
