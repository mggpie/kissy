# kissy - suckless terminal with some patches and love
# See LICENSE file for copyright and license details.
.POSIX:

include config.mk

SRC = kissy.c x.c hb.c
OBJ = $(SRC:.c=.o)

all: options kissy

options:
	@echo kissy build options:
	@echo "CFLAGS  = $(STCFLAGS)"
	@echo "LDFLAGS = $(STLDFLAGS)"
	@echo "CC      = $(CC)"

config.h:
	cp config.def.h config.h

.c.o:
	$(CC) $(STCFLAGS) -c $<

kissy.o: config.h kissy.h win.h
x.o: arg.h config.h kissy.h win.h hb.h
hb.o: kissy.h

$(OBJ): config.h config.mk

kissy: $(OBJ)
	$(CC) -o $@ $(OBJ) $(STLDFLAGS)

clean:
	rm -f kissy $(OBJ) kissy-$(VERSION).tar.gz

dist: clean
	mkdir -p kissy-$(VERSION)
	cp -R FAQ LEGACY TODO LICENSE Makefile README config.mk\
		config.def.h kissy.info kissy.1 arg.h kissy.h win.h $(SRC)\
		kissy-$(VERSION)
	tar -cf - kissy-$(VERSION) | gzip > kissy-$(VERSION).tar.gz
	rm -rf kissy-$(VERSION)

install: kissy
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp -f kissy $(DESTDIR)$(PREFIX)/bin
	chmod 755 $(DESTDIR)$(PREFIX)/bin/kissy
	mkdir -p $(DESTDIR)$(MANPREFIX)/man1
	sed "s/VERSION/$(VERSION)/g" < kissy.1 > $(DESTDIR)$(MANPREFIX)/man1/kissy.1
	chmod 644 $(DESTDIR)$(MANPREFIX)/man1/kissy.1
	tic -sx kissy.info
	@echo Please see the README file regarding the terminfo entry of kissy.
	mkdir -p $(DESTDIR)$(PREFIX)/share/applications
	cp -f kissy.desktop $(DESTDIR)$(PREFIX)/share/applications

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/kissy
	rm -f $(DESTDIR)$(MANPREFIX)/man1/kissy.1
	rm -f $(DESTDIR)$(PREFIX)/share/applications/kissy.desktop

.PHONY: all options clean dist install uninstall
