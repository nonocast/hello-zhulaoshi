DEVICE=/dev/tty.usbserial-14110

biuld: app.ihx

flash: app.ihx
	stcgal -P stc89 -p ${DEVICE} app.ihx

app.ihx: app.rel
	sdld -nf app.lk

app.rel: app.s
	sdas8051 -plosgffw app.rel app.s

clean:
	rm *.lst *.rel *.sym *.ihx

.PHONY: all build clean