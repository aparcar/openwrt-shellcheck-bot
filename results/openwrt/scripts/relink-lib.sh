
In openwrt/scripts/relink-lib.sh line 2:
[ $# -lt 4 -o -z "$1" -o -z "$2" -o -z "$3" -o -z "$4" ] && {
           ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.
                      ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.
                                 ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.
                                            ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/scripts/relink-lib.sh line 12:
SYMBOLS="$(${cross}nm "$ref" | grep -E '........ [TW] ' | awk '$3 {printf "-u%s ", $3}')"
           ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
SYMBOLS="$("${cross}"nm "$ref" | grep -E '........ [TW] ' | awk '$3 {printf "-u%s ", $3}')"


In openwrt/scripts/relink-lib.sh line 14:
${cross}gcc -nostdlib -nostartfiles -shared -Wl,--gc-sections -o "$dest" $SYMBOLS "$pic" "$@"
^------^ SC2086: Double quote to prevent globbing and word splitting.
                                                                         ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
"${cross}"gcc -nostdlib -nostartfiles -shared -Wl,--gc-sections -o "$dest" "$SYMBOLS" "$pic" "$@"

For more information:
  https://www.shellcheck.net/wiki/SC2166 -- Prefer [ p ] || [ q ] as [ p -o q...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
