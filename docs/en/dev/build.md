# Build

Follow these instruction to build a new version of the distributable `makebook` Vagrant box.

1.  Change to the `src` directory.

    ```cli
    $ cd src
    ```

    Destroy any previous builds of the box that may still exist on your local filesystem.

    ```cli
    $ vagrant destroy --force
    ```

    To be sure, delete the `.vagrant` directory, too.

    ```cli
    $ rm -R .vagrant
    ```

2.  Update the base base (`bento/ubuntu-18.04`) from which this box extends.

    ```cli
    $ vagrant box update
    ```

3.  Rebuild this box from scratch.

    ```cli
    $ vagrant up --provision
    ```

    (Note: it may take several minutes to download the Pandoc binary.)

4.  When the provisioning script is complete, SSH into the box and check it is configured as expected.

    ```cli
    $ vagrant ssh
    ```

    If there are any problems, adjust the provisioning scripts and start the process over from step one.

5.  If everything is OK, exit the VM.

    ```cli
    $ exit
    ```

    Delete all the contents of the `dist` directory, if it exists. Then, from the `src` directory, issue the following command to repackage the VM as a shareable box file.

    ```cli
    $ vagrant package --output ../dist/makebook.box
    ```

    Vagrant will power down the VM in order to package it. The packaging process takes several minutes.

Proceed to [testing](test.md) the new box before [deploying](deploy.md) it.
