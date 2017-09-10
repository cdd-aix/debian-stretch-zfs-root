# TODO

* 2017Sep10 Handle ethernet and wireless firmware for NUC
* 2017Sep10 ETHDEV=$(udevadm...) provides first network device which may not be the device with network.  Use 'ip route' looking for default instead.
* 2017Sep10 secondary package install should be non-interactive (skip zfs dialog)
* 2017Sep10 auto-detect uefi use via /sys/firmware/efi
* 2017Sep10 limit raid selections based on disk count
* 2017Sep10 ask disks per mirror group if raid1 2, 3, 4, 5, 7
* 2017Sep10 See if efi boot partition fallbacks viable via https://www.centos.org/forums/viewtopic.php?t=46952
* 2017Sep10 Make aptitude an option
* 2017Sep10 Explore having dkms build binary packages
* 2017Sep10 Create additional apt lists from existing config instead of replacing
# DONE
* 2017Sep10 2017Sep10 Provide utility to destroy /target for testing
* 2017Sep10 2017Sep10 eradicate SC2145 errors
* 2017Sep10 2017Sep10 Make sure script runs as root
* 2017Sep10 2017Sep9  The mount --bind is repetitious.
* 2017Sep9  2017Sep9  Fix hard to umount 'mount --rbind' when cgroups present
