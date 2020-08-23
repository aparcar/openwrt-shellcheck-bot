
In openwrt/package/base-files/files/lib/functions/service.sh line 74:
	$ssd${1:+ -- "$@"}
        ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	"$ssd"${1:+ -- "$@"}

For more information:
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
