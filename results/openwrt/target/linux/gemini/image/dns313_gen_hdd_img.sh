
In openwrt/target/linux/gemini/image/dns313_gen_hdd_img.sh line 25:
set $(ptgen -o $OUTPUT -h $head -s $sect -n -t 83 -p 0 -t 82 -p 128M -t 83 -p ${BOOTFSSIZE}M -t 83 -p ${ROOTFSSIZE}M)
    ^-- SC2046: Quote this to prevent word splitting.
               ^-----^ SC2086: Double quote to prevent globbing and word splitting.
                                                                              ^-----------^ SC2086: Double quote to prevent globbing and word splitting.
                                                                                                      ^-----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
set $(ptgen -o "$OUTPUT" -h $head -s $sect -n -t 83 -p 0 -t 82 -p 128M -t 83 -p "${BOOTFSSIZE}"M -t 83 -p "${ROOTFSSIZE}"M)

For more information:
  https://www.shellcheck.net/wiki/SC2046 -- Quote this to prevent word splitt...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
