
In openwrt/scripts/patch-specs.sh line 6:
	DIR="$(cd "$DIR"; pwd)"
               ^-------^ SC2164: Use 'cd ... || exit' or 'cd ... || return' in case cd fails.

Did you mean: 
	DIR="$(cd "$DIR" || exit; pwd)"

For more information:
  https://www.shellcheck.net/wiki/SC2164 -- Use 'cd ... || exit' or 'cd ... |...
