.PHONY: patch
patch: se evdev.xml evdev.lst

.PHONY: install
install: patch
	cp se /usr/share/X11/xkb/symbols
	cp evdev.xml /usr/share/X11/xkb/rules
	cp evdev.lst /usr/share/X11/xkb/rules

se.orig:
	cp /usr/share/X11/xkb/symbols/se se.orig

se: se.orig
	cat se.orig se.txt >> se

evdev.xml.orig:
	cp /usr/share/X11/xkb/rules/evdev.xml evdev.xml.orig

evdev.xml: evdev.xml.orig evdev.xml.patch
	cp evdev.xml.orig evdev.xml
	patch evdev.xml evdev.xml.patch

evdev.lst.orig:
	cp /usr/share/X11/xkb/rules/evdev.lst evdev.lst.orig

evdev.lst: evdev.lst.orig evdev.lst.patch
	cp evdev.lst.orig evdev.lst
	patch evdev.lst evdev.lst.patch

clean:
	${RM} se.orig se evdev.xml.orig evdev.xml evdev.lst.orig evdev.lst
