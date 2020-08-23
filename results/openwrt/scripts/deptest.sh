
In openwrt/scripts/deptest.sh line 55:
	make -j$nrjobs "$target" \
               ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	make -j"$nrjobs" "$target" \


In openwrt/scripts/deptest.sh line 72:
			[ -z "$(echo "$entry" | egrep -e '^linux-*.*.*$')" ] || continue
                          ^-- SC2143: Use ! egrep -q instead of comparing output with [ -z .. ].
                                                ^---^ SC2196: egrep is non-standard and deprecated. Use grep -E instead.


In openwrt/scripts/deptest.sh line 80:
	[ -e "$1" -o -L "$1" ]
                  ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/scripts/deptest.sh line 86:
	[ -n "$pkg" -a -z "$(echo "$pkg" | grep -e '/')" -a "$pkg" != "." -a "$pkg" != ".." ] || \
                    ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.
                       ^-- SC2143: Use ! grep -q instead of comparing output with [ -z .. ].
                                                         ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.
                                                                          ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/scripts/deptest.sh line 89:
	for conf in `grep CONFIG_PACKAGE tmp/.packagedeps | grep -E "[ /]$pkg\$" | sed -e 's,package-$(\(CONFIG_PACKAGE_.*\)).*,\1,'`; do
                    ^-- SC2013: To read lines rather than words, pipe/redirect to a 'while read' loop.
                    ^-- SC2006: Use $(...) notation instead of legacy backticked `...`.
                                                                                         ^-- SC2016: Expressions don't expand in single quotes, use double quotes for that.

Did you mean: 
	for conf in $(grep CONFIG_PACKAGE tmp/.packagedeps | grep -E "[ /]$pkg\$" | sed -e 's,package-$(\(CONFIG_PACKAGE_.*\)).*,\1,'); do


In openwrt/scripts/deptest.sh line 96:
	stamp_exists "$STAMP_SUCCESS" && [ $force -eq 0 ] && return
                                           ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	stamp_exists "$STAMP_SUCCESS" && [ "$force" -eq 0 ] && return


In openwrt/scripts/deptest.sh line 102:
	stamp_exists "$STAMP_BLACKLIST" && [ $force -eq 0 ] && {
                                             ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	stamp_exists "$STAMP_BLACKLIST" && [ "$force" -eq 0 ] && {


In openwrt/scripts/deptest.sh line 110:
	[ $lean_test -eq 0 ] && {
          ^--------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	[ "$lean_test" -eq 0 ] && {


In openwrt/scripts/deptest.sh line 115:
	local logfile="$(basename $pkg).log"
                                  ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local logfile="$(basename "$pkg").log"


In openwrt/scripts/deptest.sh line 117:
	if [ $? -eq 0 ]; then
             ^-- SC2181: Check exit code directly with e.g. 'if mycmd;', not indirectly with $?.


In openwrt/scripts/deptest.sh line 118:
		( cd "$STAMP_DIR_SUCCESS"; ln -s "../$LOG_DIR_NAME/$logfile" "./$pkg" )
                  ^---------------------^ SC2164: Use 'cd ... || exit' or 'cd ... || return' in case cd fails.

Did you mean: 
		( cd "$STAMP_DIR_SUCCESS" || exit; ln -s "../$LOG_DIR_NAME/$logfile" "./$pkg" )


In openwrt/scripts/deptest.sh line 120:
		( cd "$STAMP_DIR_FAILED"; ln -s "../$LOG_DIR_NAME/$logfile" "./$pkg" )
                  ^--------------------^ SC2164: Use 'cd ... || exit' or 'cd ... || return' in case cd fails.

Did you mean: 
		( cd "$STAMP_DIR_FAILED" || exit; ln -s "../$LOG_DIR_NAME/$logfile" "./$pkg" )


In openwrt/scripts/deptest.sh line 182:
	make -j$nrjobs "$target" \
               ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	make -j"$nrjobs" "$target" \


In openwrt/scripts/deptest.sh line 203:
	for pkg in `cat tmp/.packagedeps  | grep CONFIG_PACKAGE | grep -v curdir | sed -e 's,.*[/=]\s*,,' | sort -u`; do
                   ^-- SC2013: To read lines rather than words, pipe/redirect to a 'while read' loop.
                   ^-- SC2006: Use $(...) notation instead of legacy backticked `...`.
                        ^--------------^ SC2002: Useless cat. Consider 'cmd < file | ..' or 'cmd file | ..' instead.

Did you mean: 
	for pkg in $(cat tmp/.packagedeps  | grep CONFIG_PACKAGE | grep -v curdir | sed -e 's,.*[/=]\s*,,' | sort -u); do

For more information:
  https://www.shellcheck.net/wiki/SC2164 -- Use 'cd ... || exit' or 'cd ... |...
  https://www.shellcheck.net/wiki/SC2166 -- Prefer [ p ] && [ q ] as [ p -a q...
  https://www.shellcheck.net/wiki/SC2013 -- To read lines rather than words, ...
