
case "$PACKER_BUILDER_TYPE" in
vmware-iso|vmware-vmx)
    apt-get install -y open-vm-tools;
    mkdir /mnt/hgfs;
    echo "vmware.sh executed";
esac
