
In openwrt/scripts/linksys-image.sh line 49:
trap "rm -rf $tmpdir" EXIT
             ^-----^ SC2064: Use single quotes, otherwise this expands now rather than when signalled.


In openwrt/scripts/linksys-image.sh line 59:
CRC=$(printf "%08X" $(dd if="${IMG_IN}" bs=$(stat -c%s "${IMG_IN}") count=1|cksum| cut -d ' ' -f1))
                    ^-- SC2046: Quote this to prevent word splitting.
                                           ^----------------------^ SC2046: Quote this to prevent word splitting.


In openwrt/scripts/linksys-image.sh line 61:
printf ".LINKSYS.01000409%-15s%-8s%-8s%-16s" "${TYPE}" "${CRC}" "0" "K0000000F0246434" >> "${IMG_TMP_OUT}"
^-- SC2129: Consider using { cmd1; cmd2; } >> file instead of individual redirects.

For more information:
  https://www.shellcheck.net/wiki/SC2046 -- Quote this to prevent word splitt...
  https://www.shellcheck.net/wiki/SC2064 -- Use single quotes, otherwise this...
  https://www.shellcheck.net/wiki/SC2129 -- Consider using { cmd1; cmd2; } >>...
