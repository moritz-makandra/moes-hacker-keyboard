install:
	cp /usr/share/X11/xkb/rules/evdev.xml /usr/share/X11/xkb/rules/evdev.xml.save
	cp /usr/share/X11/xkb/symbols/de /usr/share/X11/xkb/symbols/de.save
	patch /usr/share/X11/xkb/rules/evdev.xml evdev.xml.patch
	patch /usr/share/X11/xkb/symbols/de symbols/de.patch
uninstall:
	rm /usr/share/X11/xkb/symbols/moe
	mv /usr/share/X11/xkb/rules/evdev.xml.save /usr/share/X11/xkb/rules/evdev.xml
	mv /usr/share/X11/xkb/symbols/de.save /usr/share/X11/xkb/symbols/de
