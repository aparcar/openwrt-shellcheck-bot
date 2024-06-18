
In openwrt/package/base-files/files/bin/ipcalc.sh line 91:
    echo "BROADCAST=$BROADCAST"
                    ^--------^ SC2153: Possible misspelling: BROADCAST may not be assigned, but broadcast is.


In openwrt/package/base-files/files/bin/ipcalc.sh line 93:
echo "NETWORK=$NETWORK"
              ^------^ SC2153: Possible misspelling: NETWORK may not be assigned, but network is.


In openwrt/package/base-files/files/bin/ipcalc.sh line 135:
    echo "error: address $IP inside range $START..$END" >&2
                                          ^----^ SC2153: Possible misspelling: START may not be assigned, but start is.

For more information:
  https://www.shellcheck.net/wiki/SC2153 -- Possible misspelling: BROADCAST m...
