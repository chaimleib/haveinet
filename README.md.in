haveinet 1.0.0
==============
    Usage: haveinet [-q | -s | -a ADDR | -v | -h]

    Options:
      -a      Test against this address (default: 8.8.8.8)
      -q      Suppress errors, stdout only
      -s      Suppress errors and stdout, return status code only
      -v      Show version info
      -h      Show this help

Tests the internet connection and exits successfully if a connection is present.
Otherwise, exits with a non-zero status.

Examples:

    $ haveinet -q
    Connected to internet
    
    $ haveinet -q
    Not connected to internet

    $ haveinet -s -a google.com && echo connected
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
* 0.0.2 - added -s option for silent output, made -q suppress stderr. Reduced try count to 3.
* 0.0.3 - minor Makefile changes
* 0.1.0 - Makefile installs to libexec instead of to lib; script version was out of sync. Created homebrew formula (tap: chaimleib/formulae).

