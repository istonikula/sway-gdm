INSTALL=install
DESTDIR?=

SWAY_DESKTOP=usr/share/wayland-sessions/sway.desktop
SWAY_RUN=usr/bin/sway-run

all:
	@echo "Nothing to do"

install:
	$(INSTALL) -m0644 -D $(SWAY_DESKTOP) $(DESTDIR)/$(SWAY_DESKTOP)
	$(INSTALL) -m0755 -D $(SWAY_RUN) $(DESTDIR)/$(SWAY_RUN)

uninstall:
	rm -f $(DESTDIR)/$(SWAY_RUN)
	rm -f $(DESTDIR)/$(SWAY_DESKTOP)

.PHONY: all install uninstall