BUILD_DIR = build/
SRC_DIR= src/
ENTRY=app.c
OUTPUT=app.ihx
PROTOCOL=stc89
DEVICE=/dev/tty.usbserial-14310

build: rtc.rel app.rel
	sdcc -o ${BUILD_DIR} ${BUILD_DIR}*.rel

flash: build
	stcgal -b 9600 --debug -P ${PROTOCOL} -p ${DEVICE} ${BUILD_DIR}${OUTPUT} 

rtc.rel: dir
	sdcc -o ${BUILD_DIR} -c ${SRC_DIR}rtc.c

app.rel: dir
	sdcc -o ${BUILD_DIR} -c ${SRC_DIR}${ENTRY}

dir:
	mkdir -p ${BUILD_DIR}

clean:
	rm -f ${BUILD_DIR}*

.PHONY: all clean