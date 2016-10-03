#!/bin/sh -eux


# Clean up some classes of packages we don't need
for p in linux-headers linux-source -dev$; do
  dpkg --list \
    | awk '{ print $2 }' \
    | grep -- $p \
    | xargs apt-get -y purge;
done

# We're a headless server so delete X11 libraries
apt-get -y purge libx11-data xauth libxmuu1 libxcb1 libx11-6 libxext6;

# Clean up Debian survey package
apt-get -y purge popularity-contest;

# Finalise and tidy up
apt-get -y autoremove;
apt-get -y clean;

# Remove any VirtualBox guest additions now we've installed them
# (see scripts/virtualbox.sh)
rm -f VBoxGuestAdditions_*.iso VBoxGuestAdditions_*.iso.?;

# Complete cleanup of salt
rm -rf /etc/salt
rm -rf /srv
