# iNZightVIT Installer for Linux Systems

## Quick Start

- clone this repository to your desired location
```{bash}
cd /path/to/install/location
git clone https://github.com/iNZightVIT/iNZightVIT-linux.git iNZightVIT
```
- make sure you have installed the dependencies listed below
- `make` will attempt to install the necessary R packages
- `make install` will create a symlink to `/usr/local/bin` so you can run `inzight` or `vit`
    (might require `sudo`)


## Dependencies

On Ubuntu and Debian, these can be installed via `apt-get`

- R: `r-base`
- GTK2+: `libgtk2.0-dev`
- XOrg: `xorg-dev`
