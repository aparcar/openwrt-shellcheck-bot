
In openwrt/scripts/ext-tools.sh line 19:
		echo "Can't find Host Build Dir "$HOST_BUILD_DIR"" >&2
                                                 ^-------------^ SC2027: The surrounding quotes actually unquote this. Remove or escape them.
                                                 ^-------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		echo "Can't find Host Build Dir ""$HOST_BUILD_DIR""" >&2


In openwrt/scripts/ext-tools.sh line 27:
		echo "Can't find Host Staging Dir Stamp "$HOST_STAGING_DIR_STAMP"" >&2
                                                         ^---------------------^ SC2027: The surrounding quotes actually unquote this. Remove or escape them.
                                                         ^---------------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		echo "Can't find Host Staging Dir Stamp ""$HOST_STAGING_DIR_STAMP""" >&2


In openwrt/scripts/ext-tools.sh line 44:
			HOST_BUILD_DIR="$(cd "$1"; pwd)"; shift
                                          ^-----^ SC2164: Use 'cd ... || exit' or 'cd ... || return' in case cd fails.

Did you mean: 
			HOST_BUILD_DIR="$(cd "$1" || exit; pwd)"; shift


In openwrt/scripts/ext-tools.sh line 52:
			HOST_STAGING_DIR_STAMP="$(cd "$1"; pwd)"; shift
                                                  ^-----^ SC2164: Use 'cd ... || exit' or 'cd ... || return' in case cd fails.

Did you mean: 
			HOST_STAGING_DIR_STAMP="$(cd "$1" || exit; pwd)"; shift


In openwrt/scripts/ext-tools.sh line 93:
			exec $0 --help
                             ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			exec "$0" --help


In openwrt/scripts/ext-tools.sh line 98:
exec $0 --help
     ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
exec "$0" --help

For more information:
  https://www.shellcheck.net/wiki/SC2027 -- The surrounding quotes actually u...
  https://www.shellcheck.net/wiki/SC2164 -- Use 'cd ... || exit' or 'cd ... |...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
