Welcome to *gir_header* project,

- a set of header files to bind different libraries to FreeBASIC code,
- following the GObject Introspection concept.

It's designed for easy handling an easy updating.

- Only top-level headers have to be included, dependencies are handled internally.
- Updates can get generated by [GirToBac](https://github.com/DTJF/girtobac) from gir files with a high level of automation.

*gir_header* files should work cross-platform (ie. Linux32/64, win32/64).

This project is a follow-up for the [GNOME Header-Satz 1.0 (32/64
bit)](https://www.freebasic-portal.de/downloads/bibliotheken/gtk-3-header-dateien-fuer-freebasic-191.html)
project. Find more information online:

- [GNOME Header Set (32/64 bit)](https://www.freebasic.net/forum/viewtopic.php?f=14&t=21488&p=190157#p190157)

Currently it's just a subset of up-to-date headers. More libraries
will get added by time.


Licence:
========

Copyright &copy; 2014-2018 by Thomas{ doT ]Freiherr[ At ]gmx[ DoT }net

This project is free software; you can redistribute it and/or modify it
under the terms of the Lesser GNU General Public License version 2 as
published by the Free Software Foundation.

This program is distributed in the hope that it will be useful, but
WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Lesser
General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-
1301, USA. For further details please refer to:
http://www.gnu.org/licenses/lgpl-2.0.html


Contents
========

| Library               | Version | Notes |
| ------------------:   | :-----: | :---- |
| Atk-1.0.bi            | 2.22.0  |       |
| Atspi-2.0.bi          |         |       |
| cairo-1.0.bi          |         |       |
| DBus-1.0.bi           |         |       |
| DBusGLib-1.0.bi       |         |       |
| dir.txt               |         |       |
| fontconfig-2.0.bi     |         |       |
| freetype2-2.0.bi      |         |       |
| Gdk-3.0.bi            |         |       |
| GdkPixbuf-2.0.bi      | 2.36.5  |       |
| GdkX11-3.0.bi         |         |       |
| Gio-2.0.bi            |         |       |
| GIRepository-2.0.bi   |         |       |
| GL-1.0.bi             |         |       |
| GLib-2.0.bi           | 2.50.3  |       |
| GModule-2.0.bi        |         |       |
| GObject-2.0.bi        |         |       |
| Gtk-3.0.bi            | 3.22.11 |       |
| GtkSource-3.0.bi      |         |       |
| HarfBuzz-0.0.bi       | 1.4.2   |       |
| libxml2-2.0.bi        |         |       |
| Pango-1.0.bi          |         |       |
| PangoCairo-1.0.bi     |         |       |
| PangoFT2-1.0.bi       |         |       |
| PangoXft-1.0.bi       |         |       |
| win32-1.0.bi          |         |       |
| xfixes-4.0.bi         |         |       |
| xft-2.0.bi            |         |       |
| xlib-2.0.bi           |         |       |
| xrandr-1.3.bi         |         |       |
| _GirToBac-0.0.bi      |         | fundamental header with GLib specifications |
| _GLibMacros-2.0.bi    |         | macros for GLib (not included in gir file) |
| _GObjectMacros-2.0.bi |         | macros for GObject (not included in gir file) |


Usage
=====

In order to compile your code against a library two components are
necessary:

- the library binary (containing the executable instructions), and
- the FB header (telling the compiler how to call the library functions).

This project contains the second part (headers), you have to downlaod
and install the first (binary) by yourself. For LINUX systems that's
easy done by the package managing system. Ie. to use Gtk-3 library on
a Debian based system (Ubuntu, Mint, ...), just install the matching
development package

    sudo apt-get install libgtk-3.0-dev

For other platforms (win32/64) you have to follow the installation
instructions on the related library web-sites. This may include that
you have to care about dependencies by yourself. Ie. for Gtk-3.0.bi
you'll also need further binaries like GLib-2.0, Pango-1.0, Gdk-3.0 and
others. Take care that you install matching versions! (Nice guys made
installers for Gtk, handling this stuff.)

Once the binyries are installed, you just have to place the headers
folder (named Gir) in the FreeBASIC include path. All headers have to
be in one folder, you must not rename or delete any file (GI demand)!
The location of the FreeBASIC include path depends on your compiler
installation, try

    /usr/local/include/freebasic    # LINUX
    C:\programs\freebasic\include   # win

Finally to make FB compile and link against the library, you add a
line at the beginning of your source code

    #INCLUDE ONCE "Gir/Gtk-3.0.bi"

Find example code in the parent project [GNOME Header-Satz 1.0 (32/64
bit)](https://www.freebasic-portal.de/downloads/bibliotheken/gtk-3-header-dateien-fuer-freebasic-191.html).


Background
==========

The first headers shipped with FreeBASIC were translated manually by
hand. Then the SWIG tool was used to support the translation process.
It's a full C compiler, that needs all dependency headers installed to
generate a translation.

Then stupid translation tools like
[h_2_bi](https://www.freebasic-portal.de/downloads/kommandozeilentools/h2bi-bas-134.html)
and later [fb-frog](https://github.com/dkl/fbfrog) were developed,
generating FB headers without full installation of all dependencies.
They rely on the fact that the original C code is well tested, and a
further type check during translation isn't necessary. So translations
of single headers can get generated on the fly, with low installation
efforts.

Anyway, all these tools need a lot of manuall fine-tuning for the final
FB header, since they get C source code as input, including constructs
that are difficult to translate, ie. like inline functions or code
generating macros. The same problem occurs for all language binding
translations, ie. Python, Vala, JavaScript, ...

That's why Gnome developers introduced the [GObject Introspection
(GI)](https://wiki.gnome.org/Projects/GObjectIntrospection) technology.
Together with the library a further file with suffix `.gir` is shipped,
containing abstract informations to generate a language binding in an
automated manner. The tool [GirToBac](https://github.com/DTJF/girtobac)
reads that file and auto-creates an FB header.

Those headers do not contain any code generating macros nor inline
functions. If you really need them, just create a further manually
translated macros header and additionally include that in your code.
See files `_GLibMacros-2.0.bi` or `_GObjectMacros-2.0.bi` as examples.


Have fun, share your results!
