

run:
	perf stat -d -e cycles,bus-cycles,major-faults,minor-faults,branches,branch-misses,cpu-clock,cache-references,cache-misses ffmpeg/ffmpeg -benchmark -y -i input.mp4 -s 1280x720 -acodec pcm_s16le -vcodec mpeg4 output1.mkv -s 640x480 -acodec copy -vcodec copy -b:v 10M -b:a 160k output2.avi -s 320x240 -acodec aac -vcodec h264 output3.flv

build:
	(cd nasm; \
	cp ../config.h.in ../configure .; \
	./configure; \
	make)
	(export PATH=$$PWD/nasm:$$PATH; \
	cd ffmpeg; \
	./configure; \
	make)

.PHONY: build
