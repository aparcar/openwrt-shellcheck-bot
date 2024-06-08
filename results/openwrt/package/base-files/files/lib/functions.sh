
In openwrt/package/base-files/files/lib/functions.sh line 40:
	for i in $(seq 0 2 $(($len - 1))); do
                              ^--^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/base-files/files/lib/functions.sh line 44:
	echo -ne $bin_data
                 ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	echo -ne "$bin_data"


In openwrt/package/base-files/files/lib/functions.sh line 52:
	for i in $(seq 0 4 $(($len - 1))); do
                              ^--^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/base-files/files/lib/functions.sh line 56:
	echo -n ${xor_data:0:-1}
                ^--------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	echo -n "${xor_data:0:-1}"


In openwrt/package/base-files/files/lib/functions.sh line 126:
	[ $len = 0 ] && append CONFIG_LIST_STATE "${CONFIG_SECTION}_${varname}"
          ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	[ "$len" = 0 ] && append CONFIG_LIST_STATE "${CONFIG_SECTION}_${varname}"


In openwrt/package/base-files/files/lib/functions.sh line 186:
	[ -z "$CONFIG_SECTIONS" ] && return 0
              ^--------------^ SC2153: Possible misspelling: CONFIG_SECTIONS may not be assigned, but CONFIG_SECTION is.


In openwrt/package/base-files/files/lib/functions.sh line 214:
	[ -z "$pkgname" ] && local pkgname="$(basename ${1%.*})"
                                                       ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	[ -z "$pkgname" ] && local pkgname="$(basename "${1%.*}")"


In openwrt/package/base-files/files/lib/functions.sh line 225:
	for i in $(grep -s "^/etc/init.d/" "$filelist"); do
                 ^-- SC2013: To read lines rather than words, pipe/redirect to a 'while read' loop.


In openwrt/package/base-files/files/lib/functions.sh line 240:
	[ -z "$pkgname" ] && local pkgname="$(basename ${1%.*})"
                                                       ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	[ -z "$pkgname" ] && local pkgname="$(basename "${1%.*}")"


In openwrt/package/base-files/files/lib/functions.sh line 241:
	local rusers="$(sed -ne 's/^Require-User: *//p' $root/usr/lib/opkg/info/${pkgname}.control 2>/dev/null)"
                                                        ^---^ SC2086: Double quote to prevent globbing and word splitting.
                                                                                ^--------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local rusers="$(sed -ne 's/^Require-User: *//p' "$root"/usr/lib/opkg/info/"${pkgname}".control 2>/dev/null)"


In openwrt/package/base-files/files/lib/functions.sh line 243:
		local rusers="$(cat $root/lib/apk/packages/${pkgname}.rusers)"
                                    ^---^ SC2086: Double quote to prevent globbing and word splitting.
                                                           ^--------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		local rusers="$(cat "$root"/lib/apk/packages/"${pkgname}".rusers)"


In openwrt/package/base-files/files/lib/functions.sh line 252:
			set -- $tuple; uname="$1"; gname="$2"; addngroups="$3"
                               ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			set -- "$tuple"; uname="$1"; gname="$2"; addngroups="$3"


In openwrt/package/base-files/files/lib/functions.sh line 254:
			set -- $uname; uname="$1"; uid="$2"
                               ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			set -- "$uname"; uname="$1"; uid="$2"


In openwrt/package/base-files/files/lib/functions.sh line 255:
			set -- $gname; gname="$1"; gid="$2"
                               ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			set -- "$gname"; gname="$1"; gid="$2"


In openwrt/package/base-files/files/lib/functions.sh line 277:
					set -- $addngroup; addngname="$1"; addngid="$2"
                                               ^--------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
					set -- "$addngroup"; addngname="$1"; addngid="$2"


In openwrt/package/base-files/files/lib/functions.sh line 300:
		for pkg_alt in $(cat $root/lib/apk/packages/${pkgname}.alternatives); do
                               ^-- SC2013: To read lines rather than words, pipe/redirect to a 'while read' loop.
                                     ^---^ SC2086: Double quote to prevent globbing and word splitting.
                                                            ^--------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		for pkg_alt in $(cat "$root"/lib/apk/packages/"${pkgname}".alternatives); do


In openwrt/package/base-files/files/lib/functions.sh line 309:
				for alts in $root/lib/apk/packages/*.alternatives; do
                                            ^---^ SC2231: Quote expansions in this for loop glob to prevent wordsplitting, e.g. "$dir"/*.txt .


In openwrt/package/base-files/files/lib/functions.sh line 310:
					for alt in $(cat $alts); do
                                                   ^----------^ SC2013: To read lines rather than words, pipe/redirect to a 'while read' loop.
                                                         ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
					for alt in $(cat "$alts"); do


In openwrt/package/base-files/files/lib/functions.sh line 345:
	[ -z "$pkgname" ] && local pkgname="$(basename ${1%.*})"
                                                       ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	[ -z "$pkgname" ] && local pkgname="$(basename "${1%.*}")"


In openwrt/package/base-files/files/lib/functions.sh line 361:
		cp -R $root/rootfs-overlay/. $root/
                      ^---^ SC2086: Double quote to prevent globbing and word splitting.
                                             ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		cp -R "$root"/rootfs-overlay/. "$root"/


In openwrt/package/base-files/files/lib/functions.sh line 362:
		rm -fR $root/rootfs-overlay/
                       ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		rm -fR "$root"/rootfs-overlay/


In openwrt/package/base-files/files/lib/functions.sh line 376:
			for i in $(grep -s "^/etc/uci-defaults/" "$filelist"); do
                                 ^-- SC2013: To read lines rather than words, pipe/redirect to a 'while read' loop.


In openwrt/package/base-files/files/lib/functions.sh line 377:
				( [ -f "$i" ] && cd "$(dirname $i)" && . "$i" ) && rm -f "$i"
                                                               ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
				( [ -f "$i" ] && cd "$(dirname "$i")" && . "$i" ) && rm -f "$i"


In openwrt/package/base-files/files/lib/functions.sh line 391:
	for i in $(grep -s "^/etc/init.d/" "$filelist"); do
                 ^-- SC2013: To read lines rather than words, pipe/redirect to a 'while read' loop.


In openwrt/package/base-files/files/lib/functions.sh line 408:
	for file in $(ls $1/*.sh 2>/dev/null); do
                    ^-----------------------^ SC2045: Iterating over ls output is fragile. Use globs.
                         ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	for file in $(ls "$1"/*.sh 2>/dev/null); do


In openwrt/package/base-files/files/lib/functions.sh line 409:
		. $file
                  ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		. "$file"


In openwrt/package/base-files/files/lib/functions.sh line 414:
	set -- $(ipcalc.sh "$@")
               ^---------------^ SC2046: Quote this to prevent word splitting.


In openwrt/package/base-files/files/lib/functions.sh line 415:
	[ $? -eq 0 ] && export -- "$@"
          ^-- SC2181: Check exit code directly with e.g. 'if mycmd;', not indirectly with $?.
                                  ^--^ SC2163: This does not export '@'. Remove $/${} for that, or use ${var?} to quiet.


In openwrt/package/base-files/files/lib/functions.sh line 422:
	echo ${INDEX}
             ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	echo "${INDEX}"


In openwrt/package/base-files/files/lib/functions.sh line 446:
	for DEVNAME in /sys/block/$ROOTDEV/mmcblk*p*; do
                                  ^------^ SC2231: Quote expansions in this for loop glob to prevent wordsplitting, e.g. "$dir"/*.txt .


In openwrt/package/base-files/files/lib/functions.sh line 447:
		PARTNAME="$(grep PARTNAME ${DEVNAME}/uevent | cut -f2 -d'=')"
                                          ^--------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		PARTNAME="$(grep PARTNAME "${DEVNAME}"/uevent | cut -f2 -d'=')"


In openwrt/package/base-files/files/lib/functions.sh line 448:
		[ "$PARTNAME" = "$1" ] && echo "/dev/$(basename $DEVNAME)" && return 0
                                                                ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		[ "$PARTNAME" = "$1" ] && echo "/dev/$(basename "$DEVNAME")" && return 0


In openwrt/package/base-files/files/lib/functions.sh line 458:
	echo "${name}:x:${gid}:" >> ${IPKG_INSTROOT}/etc/group
                                    ^--------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	echo "${name}:x:${gid}:" >> "${IPKG_INSTROOT}"/etc/group


In openwrt/package/base-files/files/lib/functions.sh line 463:
	grep -qs "^${1}:" ${IPKG_INSTROOT}/etc/group
                          ^--------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	grep -qs "^${1}:" "${IPKG_INSTROOT}"/etc/group


In openwrt/package/base-files/files/lib/functions.sh line 468:
	gid=$(grep -s "^${1}:" ${IPKG_INSTROOT}/etc/group | cut -d: -f3)
                               ^--------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	gid=$(grep -s "^${1}:" "${IPKG_INSTROOT}"/etc/group | cut -d: -f3)


In openwrt/package/base-files/files/lib/functions.sh line 470:
		echo $gid
                     ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		echo "$gid"


In openwrt/package/base-files/files/lib/functions.sh line 473:
	gids=$(cut -d: -f3 ${IPKG_INSTROOT}/etc/group)
                           ^--------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	gids=$(cut -d: -f3 "${IPKG_INSTROOT}"/etc/group)


In openwrt/package/base-files/files/lib/functions.sh line 478:
	group_add $1 $gid
                  ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	group_add "$1" $gid


In openwrt/package/base-files/files/lib/functions.sh line 484:
	grp=$(grep -s "^${1}:" ${IPKG_INSTROOT}/etc/group)
                               ^--------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	grp=$(grep -s "^${1}:" "${IPKG_INSTROOT}"/etc/group)


In openwrt/package/base-files/files/lib/functions.sh line 485:
	echo "$grp" | cut -d: -f4 | grep -q $2 && return
                                            ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	echo "$grp" | cut -d: -f4 | grep -q "$2" && return


In openwrt/package/base-files/files/lib/functions.sh line 488:
	sed -i "s/$grp/$grp$delim$2/g" ${IPKG_INSTROOT}/etc/group
                                       ^--------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	sed -i "s/$grp/$grp$delim$2/g" "${IPKG_INSTROOT}"/etc/group


In openwrt/package/base-files/files/lib/functions.sh line 504:
		uids=$(cut -d: -f3 ${IPKG_INSTROOT}/etc/passwd)
                                   ^--------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		uids=$(cut -d: -f3 "${IPKG_INSTROOT}"/etc/passwd)


In openwrt/package/base-files/files/lib/functions.sh line 513:
	echo "${name}:x:${uid}:${gid}:${desc}:${home}:${shell}" >> ${IPKG_INSTROOT}/etc/passwd
                                                                   ^--------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	echo "${name}:x:${uid}:${gid}:${desc}:${home}:${shell}" >> "${IPKG_INSTROOT}"/etc/passwd


In openwrt/package/base-files/files/lib/functions.sh line 514:
	echo "${name}:x:0:0:99999:7:::" >> ${IPKG_INSTROOT}/etc/shadow
                                           ^--------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	echo "${name}:x:0:0:99999:7:::" >> "${IPKG_INSTROOT}"/etc/shadow


In openwrt/package/base-files/files/lib/functions.sh line 519:
	grep -qs "^${1}:" ${IPKG_INSTROOT}/etc/passwd
                          ^--------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	grep -qs "^${1}:" "${IPKG_INSTROOT}"/etc/passwd


In openwrt/package/base-files/files/lib/functions.sh line 530:
	for cmdlinevar in $(cat /proc/cmdline); do
                          ^------------------^ SC2013: To read lines rather than words, pipe/redirect to a 'while read' loop.


In openwrt/package/base-files/files/lib/functions.sh line 532:
		[ "=" = "${tmp:0:1}" ] && echo ${tmp:1}
                                               ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		[ "=" = "${tmp:0:1}" ] && echo "${tmp:1}"


In openwrt/package/base-files/files/lib/functions.sh line 536:
[ -z "$IPKG_INSTROOT" ] && ( [ -f /lib/config/uci.sh ] && . /lib/config/uci.sh ) || true
                        ^-- SC2015: Note that A && B || C is not if-then-else. C may run when A is true.

For more information:
  https://www.shellcheck.net/wiki/SC2045 -- Iterating over ls output is fragi...
  https://www.shellcheck.net/wiki/SC2046 -- Quote this to prevent word splitt...
  https://www.shellcheck.net/wiki/SC2153 -- Possible misspelling: CONFIG_SECT...
