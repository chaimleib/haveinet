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
In a nutshell, download the sources and link them into a directory on your PATH:

    cd /usr/local/lib
    git clone https://github.com/chaimleib/haveinet.git
    cd haveinet 
    git checkout tags/0.0.2
    cd ../../bin
    ln -s ../lib/haveinet/haveinet.sh haveinet

Uninstall
---------
Just remove the link and the resolve directory.

    cd /usr/local
    rm bin/haveinet
    rm -rf lib/haveinet

Features
--------
* Written to be cross-platform on Mac, Linux, and Cygwin.

Changelog
---------
* 0.0.1 - initial release
