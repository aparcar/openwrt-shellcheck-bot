
In openwrt/scripts/strip-kmod.sh line 25:
${CROSS}objcopy \
^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
"${CROSS}"objcopy \


In openwrt/scripts/strip-kmod.sh line 33:
	$ARGS \
        ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	"$ARGS" \


In openwrt/scripts/strip-kmod.sh line 41:
${CROSS}nm "$MODULE.tmp" | awk '
^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
"${CROSS}"nm "$MODULE.tmp" | awk '


In openwrt/scripts/strip-kmod.sh line 53:
${CROSS}objcopy $(cat ${MODULE}.tmp1) ${MODULE}.tmp ${MODULE}.out
^------^ SC2086: Double quote to prevent globbing and word splitting.
                ^-------------------^ SC2046: Quote this to prevent word splitting.
                      ^-------^ SC2086: Double quote to prevent globbing and word splitting.
                                      ^-------^ SC2086: Double quote to prevent globbing and word splitting.
                                                    ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
"${CROSS}"objcopy $(cat "${MODULE}".tmp1) "${MODULE}".tmp "${MODULE}".out

For more information:
  https://www.shellcheck.net/wiki/SC2046 -- Quote this to prevent word splitt...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
