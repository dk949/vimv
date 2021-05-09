include config.mk
all:

clean:

install: all
	mkdir -p ${DESTDIR}${PREFIX}/bin/
	install vimv ${DESTDIR}${PREFIX}/bin/vimv

uninstall:
	rm -f ${DESTDIR}${PREFIX}/bin/vimv

.PHONY: all clean install uninstall
