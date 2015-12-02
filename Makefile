.PHONY: all
all:
	echo "Nothing to make."

.PHONY: install
install:
	install -d -m 755 $(DESTDIR)/usr/bin
	install -m 755 journald-janitor $(DESTDIR)/usr/bin
	install -d -m 755 $(DESTDIR)/usr/lib/systemd/system
	install -m 644 journald-janitor.service $(DESTDIR)/usr/lib/systemd/system

.PHONY: archive
archive:
	if ! git diff-index --quiet HEAD; then \
		echo "WARNING: not all changes have been committed."; \
	fi
	git archive --format=tar.gz --prefix=journald-janitor/ HEAD > \
		journald-janitor.tar.gz
