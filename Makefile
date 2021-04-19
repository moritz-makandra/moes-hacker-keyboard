install:
	cp symbols/moe /usr/share/X11/xkb/symbols
	cp /usr/share/X11/xkb/rules/evdev.xml /usr/share/X11/xkb/rules/evdev.xml.save
	patch /usr/share/X11/xkb/rules/evdev.xml rules/evdev.xml.patch
uninstall:
	rm /usr/share/X11/xkb/symbols/moe
	mv /usr/share/X11/xkb/rules/evdev.xml.save /usr/share/X11/xkb/rules/evdev.xml
