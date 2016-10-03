This `packer` project accompanies part 2 of the Salty Vagrant Introduction
to packer series.

For full details and a description of what's going on here, refer to http://

# Pre-reqs

1. [VirtualBox](https://www.virtualbox.org) installed
1. [packer](http://packer.io) installed
1. An internet connection

# Quickstart

Assuming you're in `packer-intro/p02` (you're reading this, so I figure you are):

```
$ packer build ubuntu-1604.json
```

Once this has finished you can test the VM it has produced by opening VirtualBox and selecting from the main menu `File`->`Import Appliance...`, then locate the `ovf` file (it should be at `packer-intro/p02/packer-ubuntu-16.04-i386-virtualbox/ubuntu-16.04-i386.ovf`). Once imported, start the VM!

You can login using the username/password set in the `preseed.cfg` : `vagrant`/`vagrant`.

This VM is not quite ready to be used by Vagrant. In the next lesson we will add the `vagrant` SSH setup and make sure the `vagrant` account is a sudoer.

Here endeth the lesson.
