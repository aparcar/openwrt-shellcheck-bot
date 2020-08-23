
In openwrt/scripts/sysupgrade-tar.sh line 3:
. $TOPDIR/scripts/functions.sh
  ^--------------------------^ SC1090: Can't follow non-constant source. Use a directive to specify location.
  ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
. "$TOPDIR"/scripts/functions.sh


In openwrt/scripts/sysupgrade-tar.sh line 41:
if [ ! -n "$board" -o ! -r "$kernel" -a  ! -r "$rootfs" -o ! "$outfile" ]; then
     ^-- SC2236: Use -z instead of ! -n.
                   ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.
                                     ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.
                                                        ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/scripts/sysupgrade-tar.sh line 59:
	case "$( get_fs_type ${rootfs} )" in
                             ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	case "$( get_fs_type "${rootfs}" )" in


In openwrt/scripts/sysupgrade-tar.sh line 75:
(cd "$tmpdir"; tar --sort=name --owner=0 --group=0 --numeric-owner -cvf sysupgrade.tar sysupgrade-${board} ${mtime})
 ^----------^ SC2164: Use 'cd ... || exit' or 'cd ... || return' in case cd fails.
                                                                                                  ^------^ SC2086: Double quote to prevent globbing and word splitting.
                                                                                                           ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
(cd "$tmpdir" || exit; tar --sort=name --owner=0 --group=0 --numeric-owner -cvf sysupgrade.tar sysupgrade-"${board}" "${mtime}")

For more information:
  https://www.shellcheck.net/wiki/SC1090 -- Can't follow non-constant source....
  https://www.shellcheck.net/wiki/SC2164 -- Use 'cd ... || exit' or 'cd ... |...
  https://www.shellcheck.net/wiki/SC2166 -- Prefer [ p ] && [ q ] as [ p -a q...
