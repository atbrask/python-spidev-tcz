PYTHON = python
TCZ-PACK = tcz-pack

all: clean get build

build:
	$(PYTHON) setup.py install --prefix=python-spidev/usr/local
	sudo echo "/etc/sysconfig/tcedir" > /opt/.tce_dir # <-- huge hack
	$(TCZ-PACK) python-spidev
	cp /tmp/tcztools/python-spidev.tcz .
	cp /tmp/tcztools/python-spidev.tcz.list .
	cp /tmp/tcztools/python-spidev.tcz.md5.txt .

clean:
	rm -rf build python-spidev py-spidev
	rm setup.py
	rm spidev_module.c
get:
	git clone https://www.github.com/doceme/py-spidev.git
	cp py-spidev/setup.py .
	cp py-spidev/spidev_module.c .

