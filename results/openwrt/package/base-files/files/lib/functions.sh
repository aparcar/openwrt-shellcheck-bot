
In openwrt/package/base-files/files/lib/functions.sh line 94:
	[ $len = 0 ] && append CONFIG_LIST_STATE "${CONFIG_SECTION}_${varname}"
          ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	[ "$len" = 0 ] && append CONFIG_LIST_STATE "${CONFIG_SECTION}_${varname}"


In openwrt/package/base-files/files/lib/functions.sh line 154:
	[ -z "$CONFIG_SECTIONS" ] && return 0
              ^--------------^ SC2153: Possible misspelling: CONFIG_SECTIONS may not be assigned, but CONFIG_SECTION is.


In openwrt/package/base-files/files/lib/functions.sh line 182:
	local pkgname="$(basename ${1%.*})"
                                  ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local pkgname="$(basename "${1%.*}")"


In openwrt/package/base-files/files/lib/functions.sh line 191:
	for i in $(grep -s "^/etc/init.d/" "$root/usr/lib/opkg/info/${pkgname}.list"); do
                 ^-- SC2013: To read lines rather than words, pipe/redirect to a 'while read' loop.


In openwrt/package/base-files/files/lib/functions.sh line 207:
	local rusers="$(sed -ne 's/^Require-User: *//p' $root/usr/lib/opkg/info/${pkgname}.control 2>/dev/null)"
                                                        ^---^ SC2086: Double quote to prevent globbing and word splitting.
                                                                                ^--------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local rusers="$(sed -ne 's/^Require-User: *//p' "$root"/usr/lib/opkg/info/"${pkgname}".control 2>/dev/null)"


In openwrt/package/base-files/files/lib/functions.sh line 215:
			set -- $tuple; uname="$1"; gname="$2"
                               ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			set -- "$tuple"; uname="$1"; gname="$2"


In openwrt/package/base-files/files/lib/functions.sh line 217:
			set -- $uname; uname="$1"; uid="$2"
                               ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			set -- "$uname"; uname="$1"; uid="$2"


In openwrt/package/base-files/files/lib/functions.sh line 218:
			set -- $gname; gname="$1"; gid="$2"
                               ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			set -- "$gname"; gname="$1"; gid="$2"


In openwrt/package/base-files/files/lib/functions.sh line 242:
	local pkgname="$(basename ${1%.*})"
                                  ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local pkgname="$(basename "${1%.*}")"


In openwrt/package/base-files/files/lib/functions.sh line 254:
		cp -R $root/rootfs-overlay/. $root/
                      ^---^ SC2086: Double quote to prevent globbing and word splitting.
                                             ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		cp -R "$root"/rootfs-overlay/. "$root"/


In openwrt/package/base-files/files/lib/functions.sh line 255:
		rm -fR $root/rootfs-overlay/
                       ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		rm -fR "$root"/rootfs-overlay/


In openwrt/package/base-files/files/lib/functions.sh line 269:
			for i in $(grep -s "^/etc/uci-defaults/" "$filelist"); do
                                 ^-- SC2013: To read lines rather than words, pipe/redirect to a 'while read' loop.


In openwrt/package/base-files/files/lib/functions.sh line 270:
				( [ -f "$i" ] && cd "$(dirname $i)" && . "$i" ) && rm -f "$i"
                                                               ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
				( [ -f "$i" ] && cd "$(dirname "$i")" && . "$i" ) && rm -f "$i"


In openwrt/package/base-files/files/lib/functions.sh line 279:
	for i in $(grep -s "^/etc/init.d/" "$root$filelist"); do
                 ^-- SC2013: To read lines rather than words, pipe/redirect to a 'while read' loop.


In openwrt/package/base-files/files/lib/functions.sh line 296:
	for file in $(ls $1/*.sh 2>/dev/null); do
                    ^-----------------------^ SC2045: Iterating over ls output is fragile. Use globs.
                         ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	for file in $(ls "$1"/*.sh 2>/dev/null); do


In openwrt/package/base-files/files/lib/functions.sh line 297:
		. $file
                  ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		. "$file"


In openwrt/package/base-files/files/lib/functions.sh line 305:
	echo ${INDEX}
             ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	echo "${INDEX}"


In openwrt/package/base-files/files/lib/functions.sh line 322:
	echo "${name}:x:${gid}:" >> ${IPKG_INSTROOT}/etc/group
                                    ^--------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	echo "${name}:x:${gid}:" >> "${IPKG_INSTROOT}"/etc/group


In openwrt/package/base-files/files/lib/functions.sh line 327:
	grep -qs "^${1}:" ${IPKG_INSTROOT}/etc/group
                          ^--------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	grep -qs "^${1}:" "${IPKG_INSTROOT}"/etc/group


In openwrt/package/base-files/files/lib/functions.sh line 332:
	gid=$(grep -s "^${1}:" ${IPKG_INSTROOT}/etc/group | cut -d: -f3)
                               ^--------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	gid=$(grep -s "^${1}:" "${IPKG_INSTROOT}"/etc/group | cut -d: -f3)


In openwrt/package/base-files/files/lib/functions.sh line 334:
		echo $gid
                     ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		echo "$gid"


In openwrt/package/base-files/files/lib/functions.sh line 337:
	gids=$(cut -d: -f3 ${IPKG_INSTROOT}/etc/group)
                           ^--------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	gids=$(cut -d: -f3 "${IPKG_INSTROOT}"/etc/group)


In openwrt/package/base-files/files/lib/functions.sh line 342:
	group_add $1 $gid
                  ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	group_add "$1" $gid


In openwrt/package/base-files/files/lib/functions.sh line 348:
	grp=$(grep -s "^${1}:" ${IPKG_INSTROOT}/etc/group)
                               ^--------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	grp=$(grep -s "^${1}:" "${IPKG_INSTROOT}"/etc/group)


In openwrt/package/base-files/files/lib/functions.sh line 349:
	echo "$grp" | cut -d: -f4 | grep -q $2 && return
                                            ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	echo "$grp" | cut -d: -f4 | grep -q "$2" && return


In openwrt/package/base-files/files/lib/functions.sh line 352:
	sed -i "s/$grp/$grp$delim$2/g" ${IPKG_INSTROOT}/etc/group
                                       ^--------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	sed -i "s/$grp/$grp$delim$2/g" "${IPKG_INSTROOT}"/etc/group


In openwrt/package/base-files/files/lib/functions.sh line 365:
		uids=$(cut -d: -f3 ${IPKG_INSTROOT}/etc/passwd)
                                   ^--------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		uids=$(cut -d: -f3 "${IPKG_INSTROOT}"/etc/passwd)


In openwrt/package/base-files/files/lib/functions.sh line 374:
	echo "${name}:x:${uid}:${gid}:${desc}:${home}:${shell}" >> ${IPKG_INSTROOT}/etc/passwd
                                                                   ^--------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	echo "${name}:x:${uid}:${gid}:${desc}:${home}:${shell}" >> "${IPKG_INSTROOT}"/etc/passwd


In openwrt/package/base-files/files/lib/functions.sh line 375:
	echo "${name}:x:0:0:99999:7:::" >> ${IPKG_INSTROOT}/etc/shadow
                                           ^--------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	echo "${name}:x:0:0:99999:7:::" >> "${IPKG_INSTROOT}"/etc/shadow


In openwrt/package/base-files/files/lib/functions.sh line 380:
	grep -qs "^${1}:" ${IPKG_INSTROOT}/etc/passwd
                          ^--------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	grep -qs "^${1}:" "${IPKG_INSTROOT}"/etc/passwd


In openwrt/package/base-files/files/lib/functions.sh line 391:
	for cmdlinevar in $(cat /proc/cmdline); do
                          ^------------------^ SC2013: To read lines rather than words, pipe/redirect to a 'while read' loop.


In openwrt/package/base-files/files/lib/functions.sh line 393:
		[ "=" = "${tmp:0:1}" ] && echo ${tmp:1}
                                               ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		[ "=" = "${tmp:0:1}" ] && echo "${tmp:1}"

For more information:
  https://www.shellcheck.net/wiki/SC2045 -- Iterating over ls output is fragi...
  https://www.shellcheck.net/wiki/SC2153 -- Possible misspelling: CONFIG_SECT...
  https://www.shellcheck.net/wiki/SC2013 -- To read lines rather than words, ...
