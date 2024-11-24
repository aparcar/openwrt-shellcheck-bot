
In openwrt/target/linux/stm32/image/gen_stm32_sdcard_img.sh line 19:
set $(ptgen -o "${OUTPUT}" -g -a 4 -l 2048 -G ${GUID} -N fsbla -p 2M -N fip -p 3M -N u-boot-env -p "${ENVSIZE}" -N boot -p${BOOTFSSIZE}M -N rootfs -p ${ROOTFSSIZE}M)
    ^-- SC2046: Quote this to prevent word splitting.
                                              ^-----^ SC2086: Double quote to prevent globbing and word splitting.
                                                                                                                          ^-----------^ SC2086: Double quote to prevent globbing and word splitting.
                                                                                                                                                      ^-----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
set $(ptgen -o "${OUTPUT}" -g -a 4 -l 2048 -G "${GUID}" -N fsbla -p 2M -N fip -p 3M -N u-boot-env -p "${ENVSIZE}" -N boot -p"${BOOTFSSIZE}"M -N rootfs -p "${ROOTFSSIZE}"M)

For more information:
  https://www.shellcheck.net/wiki/SC2046 -- Quote this to prevent word splitt...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
