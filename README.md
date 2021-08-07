# iNZightVIT Installer for Linux Systems

An installer for iNZightVIT for use on Debian based systems (this includes Ubuntu and its various flavours, such as Linux Mint). Once installed, you will be able to run `inzight` or `vit` to launch each of iNZight or VIT respectively.

## Quick Start

- clone* this repository to your desired location, and `cd` to it
```{bash}
git clone https://github.com/iNZightVIT/linux.git iNZightVIT
cd iNZightVIT
```

- make sure you have installed the dependencies listed below

- `make` will attempt to install the necessary R packages, allowing you to run:
```{bash}
cd path/to/iNZightVIT
./inzight   # to start iNZight
./vit       # to start VIT
./update    # to update 
```

- _optional_: `make install` will create a symlink to `/usr/local/bin` so you can run `inzight` or `vit`
    (might require `sudo`)


\* if you don't have `git` installed, then you can either install it (recommended, `apt-get install git`) or you can [download a ZIP copy of the repository](https://github.com/iNZightVIT/linux/archive/master.zip).
```{bash}
curl -fsSL https://github.com/iNZightVIT/linux/archive/master.zip -o iNZightVIT.zip
unzip iNZightVIT.zip && rm iNZightVIT.zip && mv iNZightVIT-linux-master iNZightVIT
```

## Dependencies

On Ubuntu and Debian, these can be installed via `apt-get`.

- System: `r-base libgtk2.0-dev xorg-dev libudunits2-dev libcurl4-openssl-dev libgdal-dev`

Note R packages can be automatically fetched during installation, but the following list can be handy if you prefer the distro repository.

- R: `r-cran-rgtk2 r-cran-rodbc r-cran-rgl r-cran-car r-cran-reshape2 r-cran-sf r-cran-survey r-cran-httr r-cran-cairodevice r-cran-rjson r-cran-gdata r-cran-fnn r-cran-viridis r-cran-vcd r-cran-dichromat r-cran-gridtext r-cran-pander r-cran-robustbase r-cran-ggrepel r-cran-multcomp r-cran-patchwork r-cran-chron r-cran-gridsvg r-cran-ggbeeswarm r-cran-ggridges`

## To Do

- Use a `configure` script to allow specification of script names (e.g., `start_inzight` instead of `inzight`) etc.
- Add `make` script to create Desktop icons on Ubuntu
- Check for dependencies before attempting install
