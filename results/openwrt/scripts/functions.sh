
In openwrt/scripts/functions.sh line 5:
	dd if=$1 bs=4 count=1 2>/dev/null | od -A n -N 4 -t x1 | tr -d ' '
              ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	dd if="$1" bs=4 count=1 2>/dev/null | od -A n -N 4 -t x1 | tr -d ' '

For more information:
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
