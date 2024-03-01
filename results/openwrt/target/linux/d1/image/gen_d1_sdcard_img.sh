
In openwrt/target/linux/d1/image/gen_d1_sdcard_img.sh line 19:
ROOTFSPTOFFSET=$(($BOOTFSSIZE + 20 + 1))
                  ^---------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/target/linux/d1/image/gen_d1_sdcard_img.sh line 24:
set $(ptgen -o $OUTPUT -h $head -s $sect -l 1024 -t c -p ${BOOTFSSIZE}M@20M -t 83 -p ${ROOTFSSIZE}M@${ROOTFSPTOFFSET}M)
    ^-- SC2046: Quote this to prevent word splitting.
               ^-----^ SC2086: Double quote to prevent globbing and word splitting.
                                                         ^-----------^ SC2086: Double quote to prevent globbing and word splitting.
                                                                                     ^-----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
set $(ptgen -o "$OUTPUT" -h $head -s $sect -l 1024 -t c -p "${BOOTFSSIZE}"M@20M -t 83 -p "${ROOTFSSIZE}"M@${ROOTFSPTOFFSET}M)

For more information:
  https://www.shellcheck.net/wiki/SC2046 -- Quote this to prevent word splitt...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
  https://www.shellcheck.net/wiki/SC2004 -- $/${} is unnecessary on arithmeti...
