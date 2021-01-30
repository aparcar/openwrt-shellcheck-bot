
In openwrt/package/base-files/files/lib/functions/preinit.sh line 42:
		[ "$v" != "${v#* }" ] && \
                                      ^-- SC2015: Note that A && B || C is not if-then-else. C may run when A is true.


In openwrt/package/base-files/files/lib/functions/preinit.sh line 67:
	/bin/mount -o noatime,move /proc $1/proc && \
                                         ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	/bin/mount -o noatime,move /proc "$1"/proc && \


In openwrt/package/base-files/files/lib/functions/preinit.sh line 68:
	pivot_root $1 $1$2 && {
                   ^-- SC2086: Double quote to prevent globbing and word splitting.
                      ^-- SC2086: Double quote to prevent globbing and word splitting.
                        ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	pivot_root "$1" "$1""$2" && {


In openwrt/package/base-files/files/lib/functions/preinit.sh line 69:
		/bin/mount -o noatime,move $2/dev /dev
                                           ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		/bin/mount -o noatime,move "$2"/dev /dev


In openwrt/package/base-files/files/lib/functions/preinit.sh line 70:
		/bin/mount -o noatime,move $2/tmp /tmp
                                           ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		/bin/mount -o noatime,move "$2"/tmp /tmp


In openwrt/package/base-files/files/lib/functions/preinit.sh line 71:
		/bin/mount -o noatime,move $2/sys /sys 2>&-
                                           ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		/bin/mount -o noatime,move "$2"/sys /sys 2>&-


In openwrt/package/base-files/files/lib/functions/preinit.sh line 72:
		/bin/mount -o noatime,move $2/overlay /overlay 2>&-
                                           ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		/bin/mount -o noatime,move "$2"/overlay /overlay 2>&-


In openwrt/package/base-files/files/lib/functions/preinit.sh line 78:
	/bin/mount -o noatime,lowerdir=/,upperdir=$1,workdir=$2 -t overlay "overlayfs:$1" /mnt
                                                  ^-- SC2086: Double quote to prevent globbing and word splitting.
                                                             ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	/bin/mount -o noatime,lowerdir=/,upperdir="$1",workdir="$2" -t overlay "overlayfs:$1" /mnt


In openwrt/package/base-files/files/lib/functions/preinit.sh line 79:
	pivot /mnt $3
                   ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	pivot /mnt "$3"

For more information:
  https://www.shellcheck.net/wiki/SC2015 -- Note that A && B || C is not if-t...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
