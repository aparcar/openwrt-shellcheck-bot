
In openwrt/target/linux/rb532/image/gen_image.sh line 12:
set $(ptgen -o "$OUTPUT" -h 16 -s 32 -l ${ALIGN} -t 0x27 -p ${KERNELSIZE}m -t 0x83 -p ${ROOTFSSIZE}m)
    ^-- SC2046: Quote this to prevent word splitting.
                                        ^------^ SC2086: Double quote to prevent globbing and word splitting.
                                                            ^-----------^ SC2086: Double quote to prevent globbing and word splitting.
                                                                                      ^-----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
set $(ptgen -o "$OUTPUT" -h 16 -s 32 -l "${ALIGN}" -t 0x27 -p "${KERNELSIZE}"m -t 0x83 -p "${ROOTFSSIZE}"m)

For more information:
  https://www.shellcheck.net/wiki/SC2046 -- Quote this to prevent word splitt...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
