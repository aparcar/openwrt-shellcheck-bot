
In openwrt/scripts/config/mconf-cfg.sh line 10:
if [ -n "$(command -v ${HOSTPKG_CONFIG})" ]; then
                      ^---------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
if [ -n "$(command -v "${HOSTPKG_CONFIG}")" ]; then


In openwrt/scripts/config/mconf-cfg.sh line 12:
		${HOSTPKG_CONFIG} --cflags ${PKG} > ${cflags}
                                                    ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		${HOSTPKG_CONFIG} --cflags ${PKG} > "${cflags}"


In openwrt/scripts/config/mconf-cfg.sh line 13:
		${HOSTPKG_CONFIG} --libs ${PKG} > ${libs}
                                                  ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		${HOSTPKG_CONFIG} --libs ${PKG} > "${libs}"


In openwrt/scripts/config/mconf-cfg.sh line 18:
		${HOSTPKG_CONFIG} --cflags ${PKG2} > ${cflags}
                                                     ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		${HOSTPKG_CONFIG} --cflags ${PKG2} > "${cflags}"


In openwrt/scripts/config/mconf-cfg.sh line 19:
		${HOSTPKG_CONFIG} --libs ${PKG2} > ${libs}
                                                   ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		${HOSTPKG_CONFIG} --libs ${PKG2} > "${libs}"


In openwrt/scripts/config/mconf-cfg.sh line 28:
	echo -D_GNU_SOURCE -I/usr/include/ncursesw > ${cflags}
                                                     ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	echo -D_GNU_SOURCE -I/usr/include/ncursesw > "${cflags}"


In openwrt/scripts/config/mconf-cfg.sh line 29:
	echo -lncursesw > ${libs}
                          ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	echo -lncursesw > "${libs}"


In openwrt/scripts/config/mconf-cfg.sh line 34:
	echo -D_GNU_SOURCE -I/usr/include/ncurses > ${cflags}
                                                    ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	echo -D_GNU_SOURCE -I/usr/include/ncurses > "${cflags}"


In openwrt/scripts/config/mconf-cfg.sh line 35:
	echo -lncurses > ${libs}
                         ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	echo -lncurses > "${libs}"


In openwrt/scripts/config/mconf-cfg.sh line 42:
	echo -D_GNU_SOURCE > ${cflags}
                             ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	echo -D_GNU_SOURCE > "${cflags}"


In openwrt/scripts/config/mconf-cfg.sh line 43:
	echo -lncurses > ${libs}
                         ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	echo -lncurses > "${libs}"

For more information:
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
