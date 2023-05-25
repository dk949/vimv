include config.mk

DIR=$(DESTDIR)$(PREFIX)/bin

all:

clean:

install: all
	mkdir -p $(DIR)
	install vimv $(DIR)/vimv
	install virm $(DIR)/virm

uninstall:
	rm -f $(DIR)/vimv
	rm -f $(DIR)/virm

.PHONY: all clean install uninstall
