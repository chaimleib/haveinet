#!/bin/bash

VERSION=0.1.0

# For OSX
# try 5x, 0.1sec intervals, timeout 1sec
PING_CMD='ping -c3 -i0.1 -t1 -no "$TEST_ADDR" 2>&1 1>/dev/null'

function showUsage() {
    echo "Usage: $0 [-a ADDR | -hqsv ]"
    echo
    echo "Options:"
    echo "  -a      Test against this address (default: 8.8.8.8)"
    echo "  -q      Suppress errors, stdout only"
    echo "  -s      Suppress errors and stdout, return status code only"
    echo "  -v      Show version info"
    echo "  -h      Show this help"
}

function showVersion() {
    echo "haveinet $VERSION"
}

function showHelp() {
    showVersion
    showUsage
}
    
while getopts ":qshva:" opt; do
    case "$opt" in
        a)
            TEST_ADDR="$OPTARG"
            ;;
        q)
            QUIET=y
            ;;
        s)
            SILENT=y
            ;;
        h)
            showHelp
            exit 0
            ;;
        v)
            showVersion
            exit 0
            ;;
        \?)
            echo "Invalid option: -$OPTARG" >&2
            echo >&2
            showHelp >&2
            exit 1
            ;;
    esac
done

[[ -n "$TEST_ADDR" ]] || TEST_ADDR=8.8.8.8

ERRORS="$(eval $PING_CMD 2>&1)"
RESULT="$?"
ERRORS="$(echo "$ERRORS" | uniq)"

[[ "$SILENT" == 'y' ]] && exit $RESULT

case "$RESULT" in
    0)
        echo "Connected to internet"
        ;;
    2)
        [[ -n "$ERRORS" ]] && [[ -z "$QUIET" ]] && echo "$ERRORS" >&2
        echo "Not connected to internet"
        ;;
    *)
        [[ -n "$ERRORS" ]] && [[ -z "$QUIET" ]] && echo "$ERRORS" >&2
        echo "ping error: $RESULT"
        echo "ERROR: aborted"
        ;;
esac

exit $RESULT

