This `packer` project accompanies part 1 of the Salty Vagrant Introduction
to packer series.

For full details and a description of what's going on here, refer to http://

# Pre-reqs

1. [VirtualBox](https://www.virtualbox.org) installed
1. [packer](http://packer.io) installed
1. An internet connection

# Quickstart

Assuming you're in `packer-intro/p01` (you're reading this, so I figure you are):

```
$ packer build ubuntu-1604.json
```

Sit back and enjoy the show (it will take a while). It should look something like this:

```
$ packer build ubuntu-1604.json
virtualbox-iso output will be in this color.

==> virtualbox-iso: Downloading or copying Guest additions
    virtualbox-iso: Downloading or copying: file:///Applications/VirtualBox.app/Contents/MacOS/VBoxGuestAdditions.iso
==> virtualbox-iso: Downloading or copying ISO
    virtualbox-iso: Downloading or copying: http://releases.ubuntu.com/16.04/ubuntu-16.04.1-server-i386.iso
    virtualbox-iso: Download progress: 6%
    virtualbox-iso: Download progress: 12%
    virtualbox-iso: Download progress: 17%
    virtualbox-iso: Download progress: 18%
    virtualbox-iso: Download progress: 19%
    virtualbox-iso: Download progress: 20%
    virtualbox-iso: Download progress: 23%
    virtualbox-iso: Download progress: 26%
    virtualbox-iso: Download progress: 30%
    virtualbox-iso: Download progress: 32%
    virtualbox-iso: Download progress: 35%
    virtualbox-iso: Download progress: 40%
    virtualbox-iso: Download progress: 45%
    virtualbox-iso: Download progress: 52%
    virtualbox-iso: Download progress: 57%
    virtualbox-iso: Download progress: 60%
    virtualbox-iso: Download progress: 65%
    virtualbox-iso: Download progress: 69%
    virtualbox-iso: Download progress: 72%
    virtualbox-iso: Download progress: 74%
    virtualbox-iso: Download progress: 77%
    virtualbox-iso: Download progress: 79%
    virtualbox-iso: Download progress: 83%
    virtualbox-iso: Download progress: 86%
    virtualbox-iso: Download progress: 88%
    virtualbox-iso: Download progress: 93%
    virtualbox-iso: Download progress: 96%
    virtualbox-iso: Download progress: 97%
    virtualbox-iso: Download progress: 100%
==> virtualbox-iso: Starting HTTP server on port 8820
==> virtualbox-iso: Creating virtual machine...
==> virtualbox-iso: Creating hard drive...
==> virtualbox-iso: Creating forwarded port mapping for communicator (SSH, WinRM, etc) (host port 2279)
==> virtualbox-iso: Executing custom VBoxManage commands...
    virtualbox-iso: Executing: modifyvm ubuntu-16.04-i386 --memory 512
    virtualbox-iso: Executing: modifyvm ubuntu-16.04-i386 --cpus 1
==> virtualbox-iso: Starting the virtual machine...
==> virtualbox-iso: Waiting 10s for boot...
==> virtualbox-iso: Typing the boot command...
==> virtualbox-iso: Waiting for SSH to become available...
==> virtualbox-iso: Connected to SSH!
==> virtualbox-iso: Uploading VirtualBox version info (5.0.26)
==> virtualbox-iso: Uploading VirtualBox guest additions ISO...
==> virtualbox-iso: Gracefully halting virtual machine...
    virtualbox-iso: [sudo] password for vagrant:
==> virtualbox-iso: Preparing to export machine...
    virtualbox-iso: Deleting forwarded port mapping for the communicator (SSH, WinRM, etc) (host port 2279)
==> virtualbox-iso: Exporting virtual machine...
    virtualbox-iso: Executing: export ubuntu-16.04-i386 --output packer-ubuntu-16.04-i386-virtualbox/ubuntu-16.04-i386.ovf
==> virtualbox-iso: Unregistering and deleting virtual machine...
Build 'virtualbox-iso' finished.

==> Builds finished. The artifacts of successful builds are:
--> virtualbox-iso: VM files in directory: packer-ubuntu-16.04-i386-virtualbox
$
```

Once this has finished you can test the VM it has produced by opening VirtualBox and selecting from teh main menu `File`->`Import Appliance...`, then locate the `ovf` file (it should be at `packer-intro/p01/packer-ubuntu-16.04-i386-virtualbox/ubuntu-16.04-i386.ovf`). Once imported, start the VM!

You can login using the username/password set in the `preseed.cfg` : `vagrant`/`vagrant`.

Here endeth the lesson.
