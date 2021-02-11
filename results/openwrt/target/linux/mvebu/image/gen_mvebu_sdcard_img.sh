
In openwrt/target/linux/mvebu/image/gen_mvebu_sdcard_img.sh line 45:
set $(ptgen -o "$OUTFILE" -h $head -s $sect -l 1024 -S 0x$SIGNATURE $ptgen_args)
    ^-- SC2046: Quote this to prevent word splitting.
                                                         ^--------^ SC2086: Double quote to prevent globbing and word splitting.
                                                                    ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
set $(ptgen -o "$OUTFILE" -h $head -s $sect -l 1024 -S 0x"$SIGNATURE" "$ptgen_args")

For more information:
  https://www.shellcheck.net/wiki/SC2046 -- Quote this to prevent word splitt...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
