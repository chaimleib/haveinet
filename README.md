haveinet 0.3.0
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
    ./configure
    make
    make install

The configure script can be provided with `--prefix=path` and `TESTADDR=hostname`. Run `./configure -h` for details.

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
* 0.2.0: add configure.ac
* 0.2.1: make the all target add execute permissions
* 0.2.2: add the all target to install
* 0.3.0: add ability to ./configure TESTADDR=hostname; Makefile detects changes to more files, README update, usage message no longer displays path to executable in example

