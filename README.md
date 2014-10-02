haveinet 0.0.1
==============
    Usage: haveinet [-q | -a ADDR | -v | -h]

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
* Works on Mac OS X. (depends on ping, which doesn't have standard options)

Changelog
---------
* 0.0.1 - initial release
