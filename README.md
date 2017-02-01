# iNZightVIT Installer for Linux Systems

## Quick Start

- clone this repository to your desired location
```{bash}
cd /path/to/install/location
git clone https://github.com/iNZightVIT/iNZightVIT-linux.git iNZightVIT
```

- `make` will attempt to install the necessary dependencies and R packages
- `make install` will create a symlink to `/usr/local/bin` so you can run `inzight` or `vit`
    (might require `sudo`)
