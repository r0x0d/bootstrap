# Bootstrap

This repository contain my special configs/settings when I need to bootstrap my system from a fresh install.

## What this bootstrap thingy do?

It will use ansible to perform the following operations:

- [x] Install some required packages to progress with the playbook
  - [x] Install unzip
  - [x] Install python-pip
- [x] Add some configurations to /etc/dnf/dnf.conf
- [x] Add some of my aliases and bash settings into $HOME/.bashrc
- [x] Sync some of the local files from this repo to their needed locations
- [x] Install the system packages that I use often
- [x] Upgrade the system packages to be all of them at the latest version
- [x] Apply my KDE settings to the system
- [x] Cleanup any changes left

## Nice! How do I run this?

Pretty easy, my friend! Just type in your shell the following:

```bash
make local 
```

If you are not sure and want to test this first in an environment where you can't destroy your system, you can do so by typing:

```bash
make vagrant
```

And it will bring a vagrant machine to you and run the playbook in there.
