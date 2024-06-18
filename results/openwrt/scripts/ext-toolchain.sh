
In openwrt/scripts/ext-toolchain.sh line 164:
				libdirs="$libdirs $(cd "$libdir"; pwd)/"
                                                    ^----------^ SC2164: Use 'cd ... || exit' or 'cd ... || return' in case cd fails.

Did you mean: 
				libdirs="$libdirs $(cd "$libdir" || exit; pwd)/"


In openwrt/scripts/ext-toolchain.sh line 169:
		for pattern in $(eval echo $spec); do
                                           ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		for pattern in $(eval echo "$spec"); do


In openwrt/scripts/ext-toolchain.sh line 170:
			find $libdirs -name "$pattern.so*" | sort -u
                             ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			find "$libdirs" -name "$pattern.so*" | sort -u


In openwrt/scripts/ext-toolchain.sh line 194:
				bindirs="$bindirs $(cd "$bindir"; pwd)/"
                                                    ^----------^ SC2164: Use 'cd ... || exit' or 'cd ... || return' in case cd fails.

Did you mean: 
				bindirs="$bindirs $(cd "$bindir" || exit; pwd)/"


In openwrt/scripts/ext-toolchain.sh line 199:
		for pattern in $(eval echo $spec); do
                                           ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		for pattern in $(eval echo "$spec"); do


In openwrt/scripts/ext-toolchain.sh line 200:
			find $bindirs -name "$pattern" | sort -u
                             ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			find "$bindirs" -name "$pattern" | sort -u


In openwrt/scripts/ext-toolchain.sh line 228:
	echo    'for arg in "$@"; do'                                     >> "$out"
        ^-- SC2129: Consider using { cmd1; cmd2; } >> file instead of individual redirects.


In openwrt/scripts/ext-toolchain.sh line 229:
	echo    ' case "$arg" in -l*|-L*|-shared|-static)'                >> "$out"
                ^-- SC2016: Expressions don't expand in single quotes, use double quotes for that.


In openwrt/scripts/ext-toolchain.sh line 230:
	echo -n '  exec "'"$bin"'" '"$CFLAGS"' ${STAGING_DIR:+'           >> "$out"
                                             ^----------------^ SC2016: Expressions don't expand in single quotes, use double quotes for that.


In openwrt/scripts/ext-toolchain.sh line 231:
	echo -n '-idirafter "$STAGING_DIR/usr/include" '                  >> "$out"
                ^-- SC2016: Expressions don't expand in single quotes, use double quotes for that.


In openwrt/scripts/ext-toolchain.sh line 232:
	echo -n '-L "$STAGING_DIR/usr/lib" '                              >> "$out"
                ^--------------------------^ SC2016: Expressions don't expand in single quotes, use double quotes for that.


In openwrt/scripts/ext-toolchain.sh line 233:
	echo    '-Wl,-rpath-link,"$STAGING_DIR/usr/lib"} "$@" ;;'         >> "$out"
                ^-- SC2016: Expressions don't expand in single quotes, use double quotes for that.


In openwrt/scripts/ext-toolchain.sh line 236:
	echo -n 'exec "'"$bin"'" '"$CFLAGS"' ${STAGING_DIR:+'             >> "$out"
                                           ^----------------^ SC2016: Expressions don't expand in single quotes, use double quotes for that.


In openwrt/scripts/ext-toolchain.sh line 237:
	echo    '-idirafter "$STAGING_DIR/usr/include"} "$@"'             >> "$out"
                ^-- SC2016: Expressions don't expand in single quotes, use double quotes for that.


In openwrt/scripts/ext-toolchain.sh line 247:
	echo -n 'exec "'"$bin"'" ${STAGING_DIR:+'                         >> "$out"
        ^-- SC2129: Consider using { cmd1; cmd2; } >> file instead of individual redirects.
                              ^-----------------^ SC2016: Expressions don't expand in single quotes, use double quotes for that.


In openwrt/scripts/ext-toolchain.sh line 248:
	echo -n '-L "$STAGING_DIR/usr/lib" '                              >> "$out"
                ^--------------------------^ SC2016: Expressions don't expand in single quotes, use double quotes for that.


In openwrt/scripts/ext-toolchain.sh line 249:
	echo    '-rpath-link "$STAGING_DIR/usr/lib"} "$@"'                >> "$out"
                ^-- SC2016: Expressions don't expand in single quotes, use double quotes for that.


In openwrt/scripts/ext-toolchain.sh line 276:
					bin='$(dirname "$0")/'"${out##*/}"'.bin'
                                            ^----------------^ SC2016: Expressions don't expand in single quotes, use double quotes for that.


In openwrt/scripts/ext-toolchain.sh line 334:
			echo $mktargets                                         >&2
                             ^--------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			echo "$mktargets"                                         >&2


In openwrt/scripts/ext-toolchain.sh line 386:
	echo "CONFIG_DEVEL=y" >> "$config"
        ^-- SC2129: Consider using { cmd1; cmd2; } >> file instead of individual redirects.


In openwrt/scripts/ext-toolchain.sh line 417:
		local llib="$(echo "$lib" | sed -e 's#.*#\L&#')"
                              ^-- SC2001: See if you can use ${variable//search/replace} instead.


In openwrt/scripts/ext-toolchain.sh line 419:
			spec="${spec:+$spec }$(echo "$file" | sed -e "s#^$TOOLCHAIN#.#")"
                                               ^-- SC2001: See if you can use ${variable//search/replace} instead.


In openwrt/scripts/ext-toolchain.sh line 433:
		local lbin="$(echo "$bin" | sed -e 's#.*#\L&#')"
                              ^-- SC2001: See if you can use ${variable//search/replace} instead.


In openwrt/scripts/ext-toolchain.sh line 435:
			spec="${spec:+$spec }$(echo "$file" | sed -e "s#^$TOOLCHAIN#.#")"
                                               ^-- SC2001: See if you can use ${variable//search/replace} instead.


In openwrt/scripts/ext-toolchain.sh line 458:
					CC="$(cd "${cmd%/*}"; pwd)/${cmd##*/}"
                                              ^------------^ SC2164: Use 'cd ... || exit' or 'cd ... || return' in case cd fails.

Did you mean: 
					CC="$(cd "${cmd%/*}" || exit; pwd)/${cmd##*/}"


In openwrt/scripts/ext-toolchain.sh line 475:
					CXX="$(cd "${cmd%/*}"; pwd)/${cmd##*/}"
                                               ^------------^ SC2164: Use 'cd ... || exit' or 'cd ... || return' in case cd fails.

Did you mean: 
					CXX="$(cd "${cmd%/*}" || exit; pwd)/${cmd##*/}"


In openwrt/scripts/ext-toolchain.sh line 492:
					CPP="$(cd "${cmd%/*}"; pwd)/${cmd##*/}"
                                               ^------------^ SC2164: Use 'cd ... || exit' or 'cd ... || return' in case cd fails.

Did you mean: 
					CPP="$(cd "${cmd%/*}" || exit; pwd)/${cmd##*/}"


In openwrt/scripts/ext-toolchain.sh line 529:
			TOOLCHAIN="$(cd "$1"; pwd)"; shift
                                     ^-----^ SC2164: Use 'cd ... || exit' or 'cd ... || return' in case cd fails.

Did you mean: 
			TOOLCHAIN="$(cd "$1" || exit; pwd)"; shift


In openwrt/scripts/ext-toolchain.sh line 548:
				exec "$CC" $CFLAGS -dumpmachine
                                           ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
				exec "$CC" "$CFLAGS" -dumpmachine


In openwrt/scripts/ext-toolchain.sh line 557:
				echo $(echo "$BIN_SPECS" | sed -ne 's#:.*$##p') >&2
                                     ^-- SC2046: Quote this to prevent word splitting.
                                     ^-- SC2005: Useless echo? Instead of 'echo $(cmd)', just use 'cmd'.


In openwrt/scripts/ext-toolchain.sh line 568:
				echo $(echo "$LIB_SPECS" | sed -ne 's#:.*$##p') >&2
                                     ^-- SC2046: Quote this to prevent word splitting.
                                     ^-- SC2005: Useless echo? Instead of 'echo $(cmd)', just use 'cmd'.


In openwrt/scripts/ext-toolchain.sh line 641:
			exec $0 --help
                             ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			exec "$0" --help


In openwrt/scripts/ext-toolchain.sh line 646:
exec $0 --help
     ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
exec "$0" --help

For more information:
  https://www.shellcheck.net/wiki/SC2046 -- Quote this to prevent word splitt...
  https://www.shellcheck.net/wiki/SC2164 -- Use 'cd ... || exit' or 'cd ... |...
  https://www.shellcheck.net/wiki/SC2016 -- Expressions don't expand in singl...
