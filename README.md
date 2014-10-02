haveinet 0.0.1
==============
haveinet 0.0.1
Usage: ./haveinet.sh [-q | -a ADDR | -v | -h]

Options:
  -a      Test against this address (default: 8.8.8.8)
  -q      Suppress output, return status code only
  -v      Show version info
  -h      Show this help

Tests the internet connection and exits successfully if a connection is present.
Otherwise, exits with a non-zero status.

Examples:

    $ haveinet
    Connected to internet
    
    $ haveinet
    Not connected to internet

    $ haveinet -a google.com -q && echo connected
    connected

Install
-------
    make install

Uninstall
---------
    make uninstall

Features
--------
* Written to be cross-platform on Mac, Linux, and Cygwin.

Changelog
---------
* 0.0.1 - initial release
