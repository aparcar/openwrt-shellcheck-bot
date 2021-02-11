
In openwrt/target/linux/layerscape/image/gen_sdcard_head_img.sh line 21:
set $(ptgen -o $OUTPUT -h $head -s $sect -t 83 -p ${KERNELSIZE}M@${KERNELOFFSET} -p ${ROOTFSSIZE}M@${ROOTFSOFFSET})
    ^-- SC2046: Quote this to prevent word splitting.
               ^-----^ SC2086: Double quote to prevent globbing and word splitting.
                                                  ^-----------^ SC2086: Double quote to prevent globbing and word splitting.
                                                                                    ^-----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
set $(ptgen -o "$OUTPUT" -h $head -s $sect -t 83 -p "${KERNELSIZE}"M@${KERNELOFFSET} -p "${ROOTFSSIZE}"M@${ROOTFSOFFSET})

For more information:
  https://www.shellcheck.net/wiki/SC2046 -- Quote this to prevent word splitt...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
