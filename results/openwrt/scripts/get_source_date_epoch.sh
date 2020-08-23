
In openwrt/scripts/get_source_date_epoch.sh line 4:
[ -n "$TOPDIR" ] && cd $TOPDIR
                    ^--------^ SC2164: Use 'cd ... || exit' or 'cd ... || return' in case cd fails.
                       ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
[ -n "$TOPDIR" ] && cd "$TOPDIR" || exit

For more information:
  https://www.shellcheck.net/wiki/SC2164 -- Use 'cd ... || exit' or 'cd ... |...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
