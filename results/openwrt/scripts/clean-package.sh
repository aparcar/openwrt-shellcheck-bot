
In openwrt/scripts/clean-package.sh line 3:
[ -n "$1" -a -n "$2" ] || {
          ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/scripts/clean-package.sh line 7:
[ -f "$1" -a -d "$2" ] || {
          ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/scripts/clean-package.sh line 11:
cat "$1" | (
    ^--^ SC2002: Useless cat. Consider 'cmd < file | ..' or 'cmd file | ..' instead.


In openwrt/scripts/clean-package.sh line 12:
	cd "$2"
        ^-----^ SC2164: Use 'cd ... || exit' or 'cd ... || return' in case cd fails.

Did you mean: 
	cd "$2" || exit


In openwrt/scripts/clean-package.sh line 13:
	while read entry; do
              ^--^ SC2162: read without -r will mangle backslashes.


In openwrt/scripts/clean-package.sh line 19:
	cd "$2"
        ^-----^ SC2164: Use 'cd ... || exit' or 'cd ... || return' in case cd fails.

Did you mean: 
	cd "$2" || exit


In openwrt/scripts/clean-package.sh line 20:
	while read entry; do
              ^--^ SC2162: read without -r will mangle backslashes.

For more information:
  https://www.shellcheck.net/wiki/SC2164 -- Use 'cd ... || exit' or 'cd ... |...
  https://www.shellcheck.net/wiki/SC2166 -- Prefer [ p ] && [ q ] as [ p -a q...
  https://www.shellcheck.net/wiki/SC2162 -- read without -r will mangle backs...
