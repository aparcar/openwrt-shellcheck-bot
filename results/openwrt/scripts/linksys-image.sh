
In openwrt/scripts/linksys-image.sh line 48:
trap "rm -rf $tmpdir" EXIT
             ^-----^ SC2064: Use single quotes, otherwise this expands now rather than when signalled.


In openwrt/scripts/linksys-image.sh line 58:
CRC=$(printf "%08X" $(dd if="${IMG_IN}" bs=$(stat -c%s "${IMG_IN}") count=1|cksum| cut -d ' ' -f1))
                    ^-- SC2046: Quote this to prevent word splitting.
                                           ^----------------------^ SC2046: Quote this to prevent word splitting.

For more information:
  https://www.shellcheck.net/wiki/SC2046 -- Quote this to prevent word splitt...
  https://www.shellcheck.net/wiki/SC2064 -- Use single quotes, otherwise this...
