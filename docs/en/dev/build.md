# Building

Follow these instruction to build a new version of the distributable Vagrant box.

1.  Change the `src` directory.

    ```sh
    $ cd src
    ```

    Destroy any previous builds of the box that may still exist on your local filesystem.

    ```sh
    $ vagrant destroy --force
    ```

    To be sure, delete the `.vagrant` directory, too.

    ```sh
    $ rm -R .vagrant
    ```

2.  Run the following command to update the base base (`bento/ubuntu-18.04`) from which our box extends.

    ```sh
    $ vagrant box update
    ```

3.  Rebuild the box from scratch.

    ```sh
    $ vagrant up --provision
    ```

    Note: it will typically take several minutes to download the Pandoc binary.

4.  When the provisioning script is complete, SSH into the box and checking it is configured as expected.

    ```sh
    $ vagrant ssh
    ```

    If there are any problems, adjust the provisioning scripts and start the process over from step one.

5.  If everything is OK, exit the VM.

    ```sh
    $ exit
    ```

    Delete all the contents of the `dist` directory, if it exists. Then, from the `src` directory, issue the following command to repackage the VM as a shareable box file.

    ```sh
    $ vagrant package --output ../dist/makebook.box
    ```

    Vagrant will power down the VM in order to package it. The packaging process takes several minutes.

Proceed to [testing](test.md) the new box before [deploying](deploy.md) it.
