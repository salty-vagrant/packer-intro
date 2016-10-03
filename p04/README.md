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

Sit back and enjoy the show (it will take a while).

Once this has finished you can test the VM it has produced by opening VirtualBox and selecting from teh main menu `File`->`Import Appliance...`, then locate the `ovf` file (it should be at `packer-intro/p03/packer-ubuntu-16.04-i386-virtualbox/ubuntu-16.04-i386.ovf`). Once imported, start the VM!

You can login using the username/password set in the `preseed.cfg` : `vagrant`/`vagrant`.

This VM is now almost ready to be used by Vagrant but we have one more important step first, and that is dealt with in the next thrilling installment.

Here endeth the lesson.
