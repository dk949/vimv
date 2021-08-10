include config.mk
all:

clean:

install: all
	mkdir -p ${DESTDIR}${PREFIX}/bin/
	install vimv ${DESTDIR}${PREFIX}/bin/vimv
	install virm ${DESTDIR}${PREFIX}/bin/virm

uninstall:
	rm -f ${DESTDIR}${PREFIX}/bin/vimv
	rm -f ${DESTDIR}${PREFIX}/bin/virm

.PHONY: all clean install uninstall
