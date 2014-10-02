#!/bin/bash
# haveinet v0.0.1

VERSION=0.0.1

function showUsage() {
    echo "Usage: $0 [-q | -a ADDR | -v | -h]"
    echo
    echo "Options:"
    echo "  -a      Test against this address (default: 8.8.8.8)"
    echo "  -q      Suppress output, return status code only"
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
    
while getopts ":qhva:" opt; do
    case "$opt" in
        a)
            TEST_ADDR="$OPTARG"
            ;;
        q)
            QUIET=y
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

ERRORS="$(ping -c5 -i0.1 -t1 -no "$TEST_ADDR" 2>&1 1>/dev/null)"
RESULT="$?"
ERRORS="$(echo "$ERRORS" | uniq)"

[[ "$QUIET" == 'y' ]] && exit $RESULT

case "$RESULT" in
    0)
        echo "Connected to internet"
        ;;
    2)
        [[ -n "$ERRORS" ]] && echo "$ERRORS" >&2
        echo "Not connected to internet"
        ;;
    *)
        [[ -n "$ERRORS" ]] && echo "$ERRORS" >&2
        echo "ping error: $RESULT"
        echo "ERROR: aborted"
        ;;
esac

exit $RESULT

