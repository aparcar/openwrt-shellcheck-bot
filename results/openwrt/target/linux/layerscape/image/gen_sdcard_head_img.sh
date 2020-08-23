
In openwrt/target/linux/layerscape/image/gen_sdcard_head_img.sh line 22:
set $(ptgen -o $OUTPUT -h $head -s $sect -l $ROOTFSOFFSET -t 83 -p ${ROOTFSSIZE}M)
    ^-- SC2046: Quote this to prevent word splitting.
               ^-----^ SC2086: Double quote to prevent globbing and word splitting.
                                                                   ^-----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
set $(ptgen -o "$OUTPUT" -h $head -s $sect -l $ROOTFSOFFSET -t 83 -p "${ROOTFSSIZE}"M)

For more information:
  https://www.shellcheck.net/wiki/SC2046 -- Quote this to prevent word splitt...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
