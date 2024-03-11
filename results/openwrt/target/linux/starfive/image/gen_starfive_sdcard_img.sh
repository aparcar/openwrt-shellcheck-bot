
In openwrt/target/linux/starfive/image/gen_starfive_sdcard_img.sh line 19:
set $(ptgen -o $OUTPUT -v -g -T sifiveu_spl -N loader1 -p 1024 -T sifiveu_uboot -N loader2 -p 4096 -t ef -N boot -p ${BOOTFSSIZE}M -N rootfs -p ${ROOTFSSIZE}M)
    ^-- SC2046: Quote this to prevent word splitting.
               ^-----^ SC2086: Double quote to prevent globbing and word splitting.
                                                                                                                    ^-----------^ SC2086: Double quote to prevent globbing and word splitting.
                                                                                                                                                ^-----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
set $(ptgen -o "$OUTPUT" -v -g -T sifiveu_spl -N loader1 -p 1024 -T sifiveu_uboot -N loader2 -p 4096 -t ef -N boot -p "${BOOTFSSIZE}"M -N rootfs -p "${ROOTFSSIZE}"M)

For more information:
  https://www.shellcheck.net/wiki/SC2046 -- Quote this to prevent word splitt...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
