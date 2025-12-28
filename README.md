# Kissy

![Screenshot](https://i.postimg.cc/1RNFRP5F/kissy.jpg)

Simple terminal emulator for X based on [st 0.8.4](https://st.suckless.org/), created to address the lack of terminals with quality font rendering and image display like Kitty.

## Features

- Different name, so you don't have to overwrite st
- Font that matches your system font
- Emoji support (requires HarfBuzz)
- Scrolling with just the mouse wheel (without an external program)
- Background transparency (requires a compositor)
- Better vertical alignment (centered)
- Option to open at specific directory with `kissy -d`
- Desktop icon
- Clipboard integration with web browser
- W3M images hack
- Clears the window before the redraw of the terminal
- Bold is not bright
- Copy URL with a shortcut
- More visually appealing text selection while using mouse/touchpad
- Xresources support

## Installation

```sh
git clone https://github.com/mggpie/kissy && cd kissy && sudo make clean install
```

## Note

This project is no longer maintained.

## License

MIT
