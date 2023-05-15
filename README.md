
# iNZightVIT Installer for Linux Systems

An installer for iNZightVIT for use on Debian based systems (this
includes Ubuntu and its various flavours, such as Linux Mint). Once
installed, you will be able to run `inzight` or `vit` to launch each of
iNZight or VIT respectively.

## Quick Start

  - clone\* this repository to your desired location, and `cd` to it

<!-- end list -->

``` bash
git clone https://github.com/iNZightVIT/linux.git iNZightVIT
cd iNZightVIT
```

  - make sure you have installed the dependencies listed below

  - `make` will attempt to install the necessary R packages, allowing
    you to run:

<!-- end list -->

``` bash
cd path/to/iNZightVIT
./inzight   # to start iNZight
./vit       # to start VIT
./update    # to update
```

  - *optional*: `make install` will create a symlink to `/usr/local/bin`
    so you can run `inzight` or `vit` (might require `sudo`)

\* if you don’t have `git` installed, then you can either install it
(recommended, `apt-get install git`) or you can [download a ZIP copy of
the repository](https://github.com/iNZightVIT/linux/archive/master.zip).

``` bash
curl -fsSL https://github.com/iNZightVIT/linux/archive/master.zip -o iNZightVIT.zip
unzip iNZightVIT.zip && rm iNZightVIT.zip && mv iNZightVIT-linux-master iNZightVIT
```

## Dependencies

The following dependency table lists the (known) distros and versions of
Linux that can run iNZightVIT. If you have successfully installed
iNZightVIT on a distro not listed here, please submit a PR to add the
build to the `builds` directory.

These builds are tested once a month, and the current version of R
supported by that distros package manager is shown. If you are insalling
a different version of R, you may need to adjust the dependencies
accordingly.

``` r
# table of dependencies
```

## To Do

  - Use a `configure` script to allow specification of script names
    (e.g., `start_inzight` instead of `inzight`) etc.
  - Add `make` script to create Desktop icons on Ubuntu
  - Check for dependencies before attempting install
