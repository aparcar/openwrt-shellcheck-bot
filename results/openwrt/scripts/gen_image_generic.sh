
In openwrt/scripts/gen_image_generic.sh line 22:
set $(ptgen -o "$OUTPUT" -h $head -s $sect ${GUID:+-g} -p "${KERNELSIZE}m${PARTOFFSET:+@$PARTOFFSET}" -p "${ROOTFSSIZE}m" ${ALIGN:+-l $ALIGN} ${SIGNATURE:+-S 0x$SIGNATURE} ${GUID:+-G $GUID})
    ^-- SC2046: Quote this to prevent word splitting.

For more information:
  https://www.shellcheck.net/wiki/SC2046 -- Quote this to prevent word splitt...
