
In openwrt/scripts/combined-ext-image.sh line 53:
trap "rm -rf $tmpdir" EXIT
             ^-----^ SC2064: Use single quotes, otherwise this expands now rather than when signalled.


In openwrt/scripts/combined-ext-image.sh line 67:
      printf "%-32s%08x%32s" "$filename" $(stat -c "%s" "$file") "${md5%% *}" >> "${IMG_TMP_OUT}"
                                         ^---------------------^ SC2046: Quote this to prevent word splitting.


In openwrt/scripts/combined-ext-image.sh line 77:
cat $FILES >> "${IMG_TMP_OUT}"
    ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
cat "$FILES" >> "${IMG_TMP_OUT}"

For more information:
  https://www.shellcheck.net/wiki/SC2046 -- Quote this to prevent word splitt...
  https://www.shellcheck.net/wiki/SC2064 -- Use single quotes, otherwise this...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
