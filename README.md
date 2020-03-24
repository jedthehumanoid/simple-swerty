# Simple Swerty

Original Swerty: http://johanegustafsson.net/projects/swerty/

Minor changes to original Swerty, for personal preferences

Works for Linux

This is basically symmetric with `Swedish (US, with Swedish letters)`, \
but with ÅÄÖ as default on keys, US keys on AltGr

## What is changed?

- Add `include "level3(ralt_switch)"` to symbols file. \
  AltGr key does not work for me otherwise
- Simplify. \
  Original Swerty has old AltGr mappings for convenience. \
  This only makes me lazy, stopping me from learning.
- Based on US keyboard.
- Simple installer

## Usage

To patch configuration files:
```bash
make
```

To install:
```bash
sudo make install
```
Alternatively manually copy `se` to /usr/share/X11/xkb/symbols \
and `evdev.xml`, `evdev.lst` to /usr/share/X11/xkb/rules \
to install.

Logout might be needed to reload files.
