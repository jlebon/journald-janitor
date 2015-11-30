.PHONY: install
install:
	install -d -m 755 $(DESTDIR)/usr/bin
	install -m 755 journald-janitor $(DESTDIR)/usr/bin
	install -d -m 755 $(DESTDIR)/usr/lib/systemd/system
	install -m 644 journald-janitor.service $(DESTDIR)/usr/lib/systemd/system
