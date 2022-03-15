# Kissy

![Kissy terminal](https://i.postimg.cc/1RNFRP5F/kissy.jpg "kissy terminal")

## About

Kissy is a terminal emulator for X that was created to address the problem of finding a terminal emulator with quality font rendering and the ability to display images like Kitty. It is based on st 0.8.4.

## Features

- Different name, so you don't have to overwrite st
- Font that matches your system font
- Emoji support (requires harfbuzz)
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

## Usage

To install Kissy, clone the repository and run:

```sh
git clone https://github.com/w23b07d28/kissy-terminal-emulator && cd kissy-terminal-emulator && sudo make clean install
```

## Disclaimer

Please note that Kissy is not and will not be further developed, and it may not be suitable for use in production environments. The author takes no responsibility for any damages that may occur as a result of using this script. Use at your own risk.

## License

Kissy is released under the MIT License.
