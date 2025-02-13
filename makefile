all: clean
	bpp -D -o autodoc-bpp autodoc.bpp

install:
	install -D -m 0755 autodoc-bpp /usr/local/bin/autodoc-bpp

uninstall:
	rm -f /usr/local/bin/autodoc-bpp

clean:
	rm -f autodoc-bpp