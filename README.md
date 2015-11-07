#####Presenting python-spidev-tcz
This is a script for compiling and packing doceme's py-spidev Python extension as a TCZ extension for use on Tiny Core Linux (TCL). It is meant to be run on the target device (a Raspberry Pi running piCore in my case), but cross compilation is certainly possible too. It outputs a file called `python-spidev.tcz` that contains the compiled `spidev.so` file. Also included are the other metadata files (ie. `python-spidev.tcz.dep`, `python-spidev.tcz.info`, `python-spidev.tcz.list`, and `python-spidev.tcz.md5.txt`).

DISCLAIMER: This script has been tested on piCore 6.1. It may work with other versions of TCL, but YMMV...

#####Prerequisites
You'll need a Tiny Core Linux installation with the following extensions (and all their dependencies) installed.
* python-dev
* compile-essentials
* linux-3.18.y_api_headers
* git
* squashfs-tools
* findutils
* tcztools (download from [here](https://github.com/MSumulong/tcztools))

#####How to build
* Clone this repository by running `git clone https://github.com/atbrask/python-spidev-tcz.git`
* Type `cd python-spidev-tcz` and run `make`

#####Original text by doceme
This project contains a python module for interfacing with SPI devices from user space via the spidev linux kernel driver.

This is a modified version of the code originally found [here](http://elk.informatik.fh-augsburg.de/da/da-49/trees/pyap7k/lang/py-spi)
