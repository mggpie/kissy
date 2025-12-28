# Kissy

![Screenshot](https://i.postimg.cc/1RNFRP5F/kissy.jpg)

A terminal emulator for X based on [st 0.8.4](https://st.suckless.org/), built to combine quality font rendering with image support similar to Kitty.

> **Note:** This project is no longer maintained.

## Features

**Core**
- Based on st, but with a different name (no overwrite needed)
- HarfBuzz support for ligatures and emoji
- W3M images hack

**UX improvements**
- Mouse wheel scrolling (no external program required)
- Background transparency (requires compositor)
- Better vertical centering
- Open in specific directory with `kissy -d`
- Copy URL with a shortcut
- Improved text selection visuals
- Bold is not bright

**Integration**
- System font matching
- Xresources support
- Clipboard integration with browser
- Desktop entry included

## Installation

```sh
git clone https://github.com/mggpie/kissy && cd kissy && sudo make clean install
```
