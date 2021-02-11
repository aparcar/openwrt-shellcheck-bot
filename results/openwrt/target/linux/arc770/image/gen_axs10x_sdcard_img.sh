
In openwrt/target/linux/arc770/image/gen_axs10x_sdcard_img.sh line 21:
set $(ptgen -o $OUTPUT -h $head -s $sect -l 1024 -t c -p ${BOOTFSSIZE}M -t 83 -p ${ROOTFSSIZE}M)
    ^-- SC2046: Quote this to prevent word splitting.
               ^-----^ SC2086: Double quote to prevent globbing and word splitting.
                                                         ^-----------^ SC2086: Double quote to prevent globbing and word splitting.
                                                                                 ^-----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
set $(ptgen -o "$OUTPUT" -h $head -s $sect -l 1024 -t c -p "${BOOTFSSIZE}"M -t 83 -p "${ROOTFSSIZE}"M)

For more information:
  https://www.shellcheck.net/wiki/SC2046 -- Quote this to prevent word splitt...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
