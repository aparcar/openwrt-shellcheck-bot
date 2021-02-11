
In openwrt/target/linux/mediatek/image/gen_mtk_mmc_img.sh line 109:
	set $(ptgen -o $OUTPUT -h $head -s $sect -a 0 -l 1024 \
            ^-- SC2046: Quote this to prevent word splitting.
                       ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	set $(ptgen -o "$OUTPUT" -h $head -s $sect -a 0 -l 1024 \


In openwrt/target/linux/mediatek/image/gen_mtk_mmc_img.sh line 110:
		    -t 41 -p 512k@${UBOOTOFS} \
                                  ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		    -t 41 -p 512k@"${UBOOTOFS}" \


In openwrt/target/linux/mediatek/image/gen_mtk_mmc_img.sh line 111:
		    -t c -p ${BOOTFSSIZE}M \
                            ^-----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		    -t c -p "${BOOTFSSIZE}"M \


In openwrt/target/linux/mediatek/image/gen_mtk_mmc_img.sh line 112:
		    -t 83 -p ${ROOTFSSIZE}M )
                             ^-----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		    -t 83 -p "${ROOTFSSIZE}"M )


In openwrt/target/linux/mediatek/image/gen_mtk_mmc_img.sh line 126:
	if [ -r ${PRELOADER} ]; then
                ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	if [ -r "${PRELOADER}" ]; then

For more information:
  https://www.shellcheck.net/wiki/SC2046 -- Quote this to prevent word splitt...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
