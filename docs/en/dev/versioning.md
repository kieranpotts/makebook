# Versioning

The API of this package is [Pandoc](https://pandoc.org/)'s API. Therefore, bumps in the major version number of Pandoc installed in the virtual machine must be marked by a corresponding major version bump for this [Vagrant box](https://app.vagrantup.com/kieranpotts/boxes/makebook).

Version numbers are kept synchronised between the Git source code repository and the box that is distributed via Vagrant Cloud.

Dependent projects can constrain themselves to a single major version of a box. For example, to use only the latest version of v1, but not v2 or higher, the following configuration can be included in the `Vagrantfile`:

```
config.vm.box_version = ">= 1.0, < 2.0"
```
