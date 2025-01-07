#!/bin/bash/
#updating
sudo apt update

#installing dependencies
sudo apt install libconfig-dev libdbus-1-dev libegl-dev libev-dev libgl-dev libepoxy-dev libpcre2-dev libpixman-1-dev libx11-xcb-dev libxcb1-dev libxcb-composite0-dev libxcb-damage0-dev libxcb-glx0-dev libxcb-image0-dev libxcb-present-dev libxcb-randr0-dev libxcb-render0-dev libxcb-render-util0-dev libxcb-shape0-dev libxcb-util-dev libxcb-xfixes0-dev meson ninja-build uthash-dev -y

#building the documents
$ meson setup --buildtype=release build
$ ninja -C build

<<comment
Built binary can be found in build/src

If you have libraries and/or headers installed at non-default location (e.g. under /usr/local/), you might need to tell meson about them, since meson doesn't look for dependencies there by default.

You can do that by setting the CPPFLAGS and LDFLAGS environment variables when running meson. Like this:

$ LDFLAGS="-L/path/to/libraries" CPPFLAGS="-I/path/to/headers" meson setup --buildtype=release build

As an example, on FreeBSD, you might have to run meson with:

$ LDFLAGS="-L/usr/local/lib" CPPFLAGS="-I/usr/local/include" meson setup --buildtype=release build
$ ninja -C build
comment

#install
$ ninja -C build install
#Default install prefix is /usr/local, you can change it with meson configure -Dprefix=<path> build
