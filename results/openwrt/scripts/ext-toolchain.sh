
In openwrt/scripts/ext-toolchain.sh line 156:
				libdirs="$libdirs $(cd "$libdir"; pwd)/"
                                                    ^----------^ SC2164: Use 'cd ... || exit' or 'cd ... || return' in case cd fails.

Did you mean: 
				libdirs="$libdirs $(cd "$libdir" || exit; pwd)/"


In openwrt/scripts/ext-toolchain.sh line 161:
		for pattern in $(eval echo $spec); do
                                           ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		for pattern in $(eval echo "$spec"); do


In openwrt/scripts/ext-toolchain.sh line 162:
			find $libdirs -name "$pattern.so*" | sort -u
                             ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			find "$libdirs" -name "$pattern.so*" | sort -u


In openwrt/scripts/ext-toolchain.sh line 186:
				bindirs="$bindirs $(cd "$bindir"; pwd)/"
                                                    ^----------^ SC2164: Use 'cd ... || exit' or 'cd ... || return' in case cd fails.

Did you mean: 
				bindirs="$bindirs $(cd "$bindir" || exit; pwd)/"


In openwrt/scripts/ext-toolchain.sh line 191:
		for pattern in $(eval echo $spec); do
                                           ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		for pattern in $(eval echo "$spec"); do


In openwrt/scripts/ext-toolchain.sh line 192:
			find $bindirs -name "$pattern" | sort -u
                             ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			find "$bindirs" -name "$pattern" | sort -u


In openwrt/scripts/ext-toolchain.sh line 207:
	echo    'for arg in "$@"; do'                                     >> "$out"
        ^-- SC2129: Consider using { cmd1; cmd2; } >> file instead of individual redirects.


In openwrt/scripts/ext-toolchain.sh line 208:
	echo    ' case "$arg" in -l*|-L*|-shared|-static)'                >> "$out"
                ^-- SC2016: Expressions don't expand in single quotes, use double quotes for that.


In openwrt/scripts/ext-toolchain.sh line 209:
	echo -n '  exec "'"$bin"'" '"$CFLAGS"' ${STAGING_DIR:+'           >> "$out"
                                             ^----------------^ SC2016: Expressions don't expand in single quotes, use double quotes for that.


In openwrt/scripts/ext-toolchain.sh line 210:
	echo -n '-idirafter "$STAGING_DIR/usr/include" '                  >> "$out"
                ^-- SC2016: Expressions don't expand in single quotes, use double quotes for that.


In openwrt/scripts/ext-toolchain.sh line 211:
	echo -n '-L "$STAGING_DIR/usr/lib" '                              >> "$out"
                ^--------------------------^ SC2016: Expressions don't expand in single quotes, use double quotes for that.


In openwrt/scripts/ext-toolchain.sh line 212:
	echo    '-Wl,-rpath-link,"$STAGING_DIR/usr/lib"} "$@" ;;'         >> "$out"
                ^-- SC2016: Expressions don't expand in single quotes, use double quotes for that.


In openwrt/scripts/ext-toolchain.sh line 215:
	echo -n 'exec "'"$bin"'" '"$CFLAGS"' ${STAGING_DIR:+'             >> "$out"
                                           ^----------------^ SC2016: Expressions don't expand in single quotes, use double quotes for that.


In openwrt/scripts/ext-toolchain.sh line 216:
	echo    '-idirafter "$STAGING_DIR/usr/include"} "$@"'             >> "$out"
                ^-- SC2016: Expressions don't expand in single quotes, use double quotes for that.


In openwrt/scripts/ext-toolchain.sh line 226:
	echo -n 'exec "'"$bin"'" ${STAGING_DIR:+'                         >> "$out"
        ^-- SC2129: Consider using { cmd1; cmd2; } >> file instead of individual redirects.
                              ^-----------------^ SC2016: Expressions don't expand in single quotes, use double quotes for that.


In openwrt/scripts/ext-toolchain.sh line 227:
	echo -n '-L "$STAGING_DIR/usr/lib" '                              >> "$out"
                ^--------------------------^ SC2016: Expressions don't expand in single quotes, use double quotes for that.


In openwrt/scripts/ext-toolchain.sh line 228:
	echo    '-rpath-link "$STAGING_DIR/usr/lib"} "$@"'                >> "$out"
                ^-- SC2016: Expressions don't expand in single quotes, use double quotes for that.


In openwrt/scripts/ext-toolchain.sh line 255:
					bin='$(dirname "$0")/'"${out##*/}"'.bin'
                                            ^----------------^ SC2016: Expressions don't expand in single quotes, use double quotes for that.


In openwrt/scripts/ext-toolchain.sh line 310:
			echo $mktargets                                         >&2
                             ^--------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			echo "$mktargets"                                         >&2


In openwrt/scripts/ext-toolchain.sh line 355:
	echo "CONFIG_DEVEL=y" >> "$config"
        ^-- SC2129: Consider using { cmd1; cmd2; } >> file instead of individual redirects.


In openwrt/scripts/ext-toolchain.sh line 369:
		local llib="$(echo "$lib" | sed -e 's#.*#\L&#')"
                              ^-- SC2001: See if you can use ${variable//search/replace} instead.


In openwrt/scripts/ext-toolchain.sh line 371:
			spec="${spec:+$spec }$(echo "$file" | sed -e "s#^$TOOLCHAIN#.#")"
                                               ^-- SC2001: See if you can use ${variable//search/replace} instead.


In openwrt/scripts/ext-toolchain.sh line 385:
		local lbin="$(echo "$bin" | sed -e 's#.*#\L&#')"
                              ^-- SC2001: See if you can use ${variable//search/replace} instead.


In openwrt/scripts/ext-toolchain.sh line 387:
			spec="${spec:+$spec }$(echo "$file" | sed -e "s#^$TOOLCHAIN#.#")"
                                               ^-- SC2001: See if you can use ${variable//search/replace} instead.


In openwrt/scripts/ext-toolchain.sh line 410:
					CC="$(cd "${cmd%/*}"; pwd)/${cmd##*/}"
                                              ^------------^ SC2164: Use 'cd ... || exit' or 'cd ... || return' in case cd fails.

Did you mean: 
					CC="$(cd "${cmd%/*}" || exit; pwd)/${cmd##*/}"


In openwrt/scripts/ext-toolchain.sh line 427:
					CXX="$(cd "${cmd%/*}"; pwd)/${cmd##*/}"
                                               ^------------^ SC2164: Use 'cd ... || exit' or 'cd ... || return' in case cd fails.

Did you mean: 
					CXX="$(cd "${cmd%/*}" || exit; pwd)/${cmd##*/}"


In openwrt/scripts/ext-toolchain.sh line 444:
					CPP="$(cd "${cmd%/*}"; pwd)/${cmd##*/}"
                                               ^------------^ SC2164: Use 'cd ... || exit' or 'cd ... || return' in case cd fails.

Did you mean: 
					CPP="$(cd "${cmd%/*}" || exit; pwd)/${cmd##*/}"


In openwrt/scripts/ext-toolchain.sh line 474:
			TOOLCHAIN="$(cd "$1"; pwd)"; shift
                                     ^-----^ SC2164: Use 'cd ... || exit' or 'cd ... || return' in case cd fails.

Did you mean: 
			TOOLCHAIN="$(cd "$1" || exit; pwd)"; shift


In openwrt/scripts/ext-toolchain.sh line 493:
				exec "$CC" $CFLAGS -dumpmachine
                                           ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
				exec "$CC" "$CFLAGS" -dumpmachine


In openwrt/scripts/ext-toolchain.sh line 502:
				echo $(echo "$BIN_SPECS" | sed -ne 's#:.*$##p') >&2
                                     ^-- SC2046: Quote this to prevent word splitting.
                                     ^-- SC2005: Useless echo? Instead of 'echo $(cmd)', just use 'cmd'.


In openwrt/scripts/ext-toolchain.sh line 513:
				echo $(echo "$LIB_SPECS" | sed -ne 's#:.*$##p') >&2
                                     ^-- SC2046: Quote this to prevent word splitting.
                                     ^-- SC2005: Useless echo? Instead of 'echo $(cmd)', just use 'cmd'.


In openwrt/scripts/ext-toolchain.sh line 578:
			exec $0 --help
                             ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			exec "$0" --help


In openwrt/scripts/ext-toolchain.sh line 583:
exec $0 --help
     ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
exec "$0" --help

For more information:
  https://www.shellcheck.net/wiki/SC2046 -- Quote this to prevent word splitt...
  https://www.shellcheck.net/wiki/SC2164 -- Use 'cd ... || exit' or 'cd ... |...
  https://www.shellcheck.net/wiki/SC2016 -- Expressions don't expand in singl...
