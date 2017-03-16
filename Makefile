

build:
	(cd nasm; \
	./autogen.sh; \
	./configure; \
	make)
	(export PATH=$$PWD/nasm:$$PATH; \
	cd ffmpeg; \
	./configure; \
	make)

.PHONY: build
