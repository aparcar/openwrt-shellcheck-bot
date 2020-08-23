
In openwrt/scripts/gen-dependencies.sh line 21:
find $TARGETS -type f -a -exec file {} \; | \
     ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
find "$TARGETS" -type f -a -exec file {} \; | \


In openwrt/scripts/gen-dependencies.sh line 23:
  $XARGS -n1 $READELF -d | \
             ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
  $XARGS -n1 "$READELF" -d | \


In openwrt/scripts/gen-dependencies.sh line 27:
tmp=$(mktemp $TMP_DIR/dep.XXXXXXXX)
             ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
tmp=$(mktemp "$TMP_DIR"/dep.XXXXXXXX)


In openwrt/scripts/gen-dependencies.sh line 28:
for kmod in $(find $TARGETS -type f -name \*.ko); do
            ^-- SC2044: For loops over find output are fragile. Use find -exec or a while read loop.
                   ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
for kmod in $(find "$TARGETS" -type f -name \*.ko); do


In openwrt/scripts/gen-dependencies.sh line 29:
	$OBJCOPY -O binary -j .modinfo $kmod $tmp
                                       ^---^ SC2086: Double quote to prevent globbing and word splitting.
                                             ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	$OBJCOPY -O binary -j .modinfo "$kmod" "$tmp"


In openwrt/scripts/gen-dependencies.sh line 30:
	sed -e 's,\x00,\n,g' $tmp | \
                             ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	sed -e 's,\x00,\n,g' "$tmp" | \


In openwrt/scripts/gen-dependencies.sh line 33:
rm -f $tmp
      ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
rm -f "$tmp"

For more information:
  https://www.shellcheck.net/wiki/SC2044 -- For loops over find output are fr...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
