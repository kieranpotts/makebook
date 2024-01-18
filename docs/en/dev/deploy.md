# Deploy

Vagrant boxes are large — occupying several gigabytes of disk space, typically — so they are not committed to the version control repository. Instead, box packages are distributed separately via [Vagrant Cloud](https://app.vagrantup.com/).

The following instructions are for the project maintainers to release new versions of the makebook box via Vagrant Cloud.

1.  Login to Vagrant Cloud.

    Go to https://app.vagrantup.com/kieranpotts/ and choose the `makebook` box you want to update. Click **New Version**.

2.  Input the new **Version Number**. This must be in the format `[0-9]+[.][0-9]+[.][0-9]+`. Do not include the "v" prefix. Please refer to our [versioning policy](versioning.md).

    Include a **Desciption** if there are notable changes to the software stack in this release.

    Click **Create version**.

3.  Click **Add a provider** and input `virtualbox` (lower case, no spaces).

    Leave the other input fields to their default values and click **Continue to upload**.

    Select the `makebook.box` file from the `dist` directory and start the upload. This will take several minutes depending on your broadband speed.

4.  When the upload is complete, click **Versions** and you should see the new version listed. 

    However, new versions are not automatically released. To release the box — so it can be seen by the `vagrant` CLI client — click **Release...**.

    Confirm the version number and description, and click **Release version**.

5.  Follow the [SrcFlow workflow](https://srcflow.com/) to update the CHANGELOG and tag a new release in the source control repository. Use the same version number as for the Vagrant Cloud distributable.

To learn more about the life cycle of boxes distributed via Vagrant Cloud, see https://www.vagrantup.com/docs/vagrant-cloud/boxes/index.html.
