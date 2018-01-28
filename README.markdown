# Arch Linux ArchISO ZFS

Generates a bootable Arch Linux ISO containing the latest version of the Zettabyte File System (ZFS).


## Usage

```bash
docker run -it --rm --privileged -v "$(pwd):/archlive/out" lukechannings/archlinux-archiso-zfs
```

Once completed, a new ISO image will appear in the current directory, named `archlinux-2018.01.27-x86_64.iso` if the date were the 27th of January 2018.