
In openwrt/scripts/ext-toolchain.sh line 157:
				libdirs="$libdirs $(cd "$libdir"; pwd)/"
                                                    ^----------^ SC2164: Use 'cd ... || exit' or 'cd ... || return' in case cd fails.

Did you mean: 
				libdirs="$libdirs $(cd "$libdir" || exit; pwd)/"


In openwrt/scripts/ext-toolchain.sh line 162:
		for pattern in $(eval echo $spec); do
                                           ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		for pattern in $(eval echo "$spec"); do


In openwrt/scripts/ext-toolchain.sh line 163:
			find $libdirs -name "$pattern.so*" | sort -u
                             ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			find "$libdirs" -name "$pattern.so*" | sort -u


In openwrt/scripts/ext-toolchain.sh line 187:
				bindirs="$bindirs $(cd "$bindir"; pwd)/"
                                                    ^----------^ SC2164: Use 'cd ... || exit' or 'cd ... || return' in case cd fails.

Did you mean: 
				bindirs="$bindirs $(cd "$bindir" || exit; pwd)/"


In openwrt/scripts/ext-toolchain.sh line 192:
		for pattern in $(eval echo $spec); do
                                           ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		for pattern in $(eval echo "$spec"); do


In openwrt/scripts/ext-toolchain.sh line 193:
			find $bindirs -name "$pattern" | sort -u
                             ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			find "$bindirs" -name "$pattern" | sort -u


In openwrt/scripts/ext-toolchain.sh line 208:
	echo    'for arg in "$@"; do'                                     >> "$out"
        ^-- SC2129: Consider using { cmd1; cmd2; } >> file instead of individual redirects.


In openwrt/scripts/ext-toolchain.sh line 209:
	echo    ' case "$arg" in -l*|-L*|-shared|-static)'                >> "$out"
                ^-- SC2016: Expressions don't expand in single quotes, use double quotes for that.


In openwrt/scripts/ext-toolchain.sh line 210:
	echo -n '  exec "'"$bin"'" '"$CFLAGS"' ${STAGING_DIR:+'           >> "$out"
                                             ^----------------^ SC2016: Expressions don't expand in single quotes, use double quotes for that.


In openwrt/scripts/ext-toolchain.sh line 211:
	echo -n '-idirafter "$STAGING_DIR/usr/include" '                  >> "$out"
                ^-- SC2016: Expressions don't expand in single quotes, use double quotes for that.


In openwrt/scripts/ext-toolchain.sh line 212:
	echo -n '-L "$STAGING_DIR/usr/lib" '                              >> "$out"
                ^--------------------------^ SC2016: Expressions don't expand in single quotes, use double quotes for that.


In openwrt/scripts/ext-toolchain.sh line 213:
	echo    '-Wl,-rpath-link,"$STAGING_DIR/usr/lib"} "$@" ;;'         >> "$out"
                ^-- SC2016: Expressions don't expand in single quotes, use double quotes for that.


In openwrt/scripts/ext-toolchain.sh line 216:
	echo -n 'exec "'"$bin"'" '"$CFLAGS"' ${STAGING_DIR:+'             >> "$out"
                                           ^----------------^ SC2016: Expressions don't expand in single quotes, use double quotes for that.


In openwrt/scripts/ext-toolchain.sh line 217:
	echo    '-idirafter "$STAGING_DIR/usr/include"} "$@"'             >> "$out"
                ^-- SC2016: Expressions don't expand in single quotes, use double quotes for that.


In openwrt/scripts/ext-toolchain.sh line 227:
	echo -n 'exec "'"$bin"'" ${STAGING_DIR:+'                         >> "$out"
        ^-- SC2129: Consider using { cmd1; cmd2; } >> file instead of individual redirects.
                              ^-----------------^ SC2016: Expressions don't expand in single quotes, use double quotes for that.


In openwrt/scripts/ext-toolchain.sh line 228:
	echo -n '-L "$STAGING_DIR/usr/lib" '                              >> "$out"
                ^--------------------------^ SC2016: Expressions don't expand in single quotes, use double quotes for that.


In openwrt/scripts/ext-toolchain.sh line 229:
	echo    '-rpath-link "$STAGING_DIR/usr/lib"} "$@"'                >> "$out"
                ^-- SC2016: Expressions don't expand in single quotes, use double quotes for that.


In openwrt/scripts/ext-toolchain.sh line 256:
					bin='$(dirname "$0")/'"${out##*/}"'.bin'
                                            ^----------------^ SC2016: Expressions don't expand in single quotes, use double quotes for that.


In openwrt/scripts/ext-toolchain.sh line 314:
			echo $mktargets                                         >&2
                             ^--------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			echo "$mktargets"                                         >&2


In openwrt/scripts/ext-toolchain.sh line 366:
	echo "CONFIG_DEVEL=y" >> "$config"
        ^-- SC2129: Consider using { cmd1; cmd2; } >> file instead of individual redirects.


In openwrt/scripts/ext-toolchain.sh line 390:
		local llib="$(echo "$lib" | sed -e 's#.*#\L&#')"
                              ^-- SC2001: See if you can use ${variable//search/replace} instead.


In openwrt/scripts/ext-toolchain.sh line 392:
			spec="${spec:+$spec }$(echo "$file" | sed -e "s#^$TOOLCHAIN#.#")"
                                               ^-- SC2001: See if you can use ${variable//search/replace} instead.


In openwrt/scripts/ext-toolchain.sh line 406:
		local lbin="$(echo "$bin" | sed -e 's#.*#\L&#')"
                              ^-- SC2001: See if you can use ${variable//search/replace} instead.


In openwrt/scripts/ext-toolchain.sh line 408:
			spec="${spec:+$spec }$(echo "$file" | sed -e "s#^$TOOLCHAIN#.#")"
                                               ^-- SC2001: See if you can use ${variable//search/replace} instead.


In openwrt/scripts/ext-toolchain.sh line 431:
					CC="$(cd "${cmd%/*}"; pwd)/${cmd##*/}"
                                              ^------------^ SC2164: Use 'cd ... || exit' or 'cd ... || return' in case cd fails.

Did you mean: 
					CC="$(cd "${cmd%/*}" || exit; pwd)/${cmd##*/}"


In openwrt/scripts/ext-toolchain.sh line 448:
					CXX="$(cd "${cmd%/*}"; pwd)/${cmd##*/}"
                                               ^------------^ SC2164: Use 'cd ... || exit' or 'cd ... || return' in case cd fails.

Did you mean: 
					CXX="$(cd "${cmd%/*}" || exit; pwd)/${cmd##*/}"


In openwrt/scripts/ext-toolchain.sh line 465:
					CPP="$(cd "${cmd%/*}"; pwd)/${cmd##*/}"
                                               ^------------^ SC2164: Use 'cd ... || exit' or 'cd ... || return' in case cd fails.

Did you mean: 
					CPP="$(cd "${cmd%/*}" || exit; pwd)/${cmd##*/}"


In openwrt/scripts/ext-toolchain.sh line 502:
			TOOLCHAIN="$(cd "$1"; pwd)"; shift
                                     ^-----^ SC2164: Use 'cd ... || exit' or 'cd ... || return' in case cd fails.

Did you mean: 
			TOOLCHAIN="$(cd "$1" || exit; pwd)"; shift


In openwrt/scripts/ext-toolchain.sh line 521:
				exec "$CC" $CFLAGS -dumpmachine
                                           ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
				exec "$CC" "$CFLAGS" -dumpmachine


In openwrt/scripts/ext-toolchain.sh line 530:
				echo $(echo "$BIN_SPECS" | sed -ne 's#:.*$##p') >&2
                                     ^-- SC2046: Quote this to prevent word splitting.
                                     ^-- SC2005: Useless echo? Instead of 'echo $(cmd)', just use 'cmd'.


In openwrt/scripts/ext-toolchain.sh line 541:
				echo $(echo "$LIB_SPECS" | sed -ne 's#:.*$##p') >&2
                                     ^-- SC2046: Quote this to prevent word splitting.
                                     ^-- SC2005: Useless echo? Instead of 'echo $(cmd)', just use 'cmd'.


In openwrt/scripts/ext-toolchain.sh line 613:
			exec $0 --help
                             ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			exec "$0" --help


In openwrt/scripts/ext-toolchain.sh line 618:
exec $0 --help
     ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
exec "$0" --help

For more information:
  https://www.shellcheck.net/wiki/SC2046 -- Quote this to prevent word splitt...
  https://www.shellcheck.net/wiki/SC2164 -- Use 'cd ... || exit' or 'cd ... |...
  https://www.shellcheck.net/wiki/SC2016 -- Expressions don't expand in singl...
