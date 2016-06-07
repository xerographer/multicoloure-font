# Makefile to create Multicoloure SVGinOT color font

# Where to find scfbuild?
SCFBUILD := SCFBuild/bin/scfbuild

VERSION := 1.0
FONT := build/Multicoloure-SVGinOT.ttf

SVG_BW := bw
SVG_COLOR := color

.PHONY: all clean

all: $(FONT)

$(FONT): | build
	$(SCFBUILD) -c scfbuild.yml --font-version="$(VERSION)"
	webify-linux-x86_64 $(FONT)

build:
	mkdir build

clean:
	rm -rf build
