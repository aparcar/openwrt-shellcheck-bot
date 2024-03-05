
In openwrt/target/linux/bcm27xx/image/gen_rpi_sdcard_img.sh line 22:
set $(ptgen -o $OUTPUT -h $head -s $sect -l $align -t $kernel_type -p ${BOOTFSSIZE}M -t $rootfs_type -p ${ROOTFSSIZE}M ${SIGNATURE:+-S 0x$SIGNATURE})
    ^-- SC2046: Quote this to prevent word splitting.
               ^-----^ SC2086: Double quote to prevent globbing and word splitting.
                                                                      ^-----------^ SC2086: Double quote to prevent globbing and word splitting.
                                                                                                        ^-----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
set $(ptgen -o "$OUTPUT" -h $head -s $sect -l $align -t $kernel_type -p "${BOOTFSSIZE}"M -t $rootfs_type -p "${ROOTFSSIZE}"M ${SIGNATURE:+-S 0x$SIGNATURE})

For more information:
  https://www.shellcheck.net/wiki/SC2046 -- Quote this to prevent word splitt...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
