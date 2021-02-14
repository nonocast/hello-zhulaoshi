BUILD_DIR = build/
SRC_DIR= src/
ENTRY=app.c
OUTPUT=app.ihx
PROTOCOL=stc89
DEVICE=/dev/tty.usbserial-14310

build: ${OUTPUT}

flash: build
	stcgal -b 9600 --debug -P ${PROTOCOL} -p ${DEVICE} ${BUILD_DIR}${OUTPUT} 

${OUTPUT}:
	mkdir -p build && sdcc -V -o $(BUILD_DIR) ${SRC_DIR}${ENTRY}

clean:
	rm -f ${BUILD_DIR}*

.PHONY: all clean