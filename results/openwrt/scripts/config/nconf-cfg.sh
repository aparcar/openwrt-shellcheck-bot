
In openwrt/scripts/config/nconf-cfg.sh line 10:
if [ -n "$(command -v ${HOSTPKG_CONFIG})" ]; then
                      ^---------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
if [ -n "$(command -v "${HOSTPKG_CONFIG}")" ]; then


In openwrt/scripts/config/nconf-cfg.sh line 11:
	if ${HOSTPKG_CONFIG} --exists $PKG; then
                                      ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	if ${HOSTPKG_CONFIG} --exists "$PKG"; then


In openwrt/scripts/config/nconf-cfg.sh line 12:
		${HOSTPKG_CONFIG} --cflags ${PKG} > ${cflags}
                                           ^----^ SC2086: Double quote to prevent globbing and word splitting.
                                                    ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		${HOSTPKG_CONFIG} --cflags "${PKG}" > "${cflags}"


In openwrt/scripts/config/nconf-cfg.sh line 13:
		${HOSTPKG_CONFIG} --libs ${PKG} > ${libs}
                                         ^----^ SC2086: Double quote to prevent globbing and word splitting.
                                                  ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		${HOSTPKG_CONFIG} --libs "${PKG}" > "${libs}"


In openwrt/scripts/config/nconf-cfg.sh line 17:
	if ${HOSTPKG_CONFIG} --exists $PKG2; then
                                      ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	if ${HOSTPKG_CONFIG} --exists "$PKG2"; then


In openwrt/scripts/config/nconf-cfg.sh line 18:
		${HOSTPKG_CONFIG} --cflags ${PKG2} > ${cflags}
                                           ^-----^ SC2086: Double quote to prevent globbing and word splitting.
                                                     ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		${HOSTPKG_CONFIG} --cflags "${PKG2}" > "${cflags}"


In openwrt/scripts/config/nconf-cfg.sh line 19:
		${HOSTPKG_CONFIG} --libs ${PKG2} > ${libs}
                                         ^-----^ SC2086: Double quote to prevent globbing and word splitting.
                                                   ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		${HOSTPKG_CONFIG} --libs "${PKG2}" > "${libs}"


In openwrt/scripts/config/nconf-cfg.sh line 28:
	echo -D_GNU_SOURCE -I/usr/include/ncursesw > ${cflags}
                                                     ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	echo -D_GNU_SOURCE -I/usr/include/ncursesw > "${cflags}"


In openwrt/scripts/config/nconf-cfg.sh line 29:
	echo -lncursesw -lmenuw -lpanelw > ${libs}
                                           ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	echo -lncursesw -lmenuw -lpanelw > "${libs}"


In openwrt/scripts/config/nconf-cfg.sh line 34:
	echo -D_GNU_SOURCE -I/usr/include/ncurses > ${cflags}
                                                    ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	echo -D_GNU_SOURCE -I/usr/include/ncurses > "${cflags}"


In openwrt/scripts/config/nconf-cfg.sh line 35:
	echo -lncurses -lmenu -lpanel > ${libs}
                                        ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	echo -lncurses -lmenu -lpanel > "${libs}"


In openwrt/scripts/config/nconf-cfg.sh line 40:
	echo -D_GNU_SOURCE > ${cflags}
                             ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	echo -D_GNU_SOURCE > "${cflags}"


In openwrt/scripts/config/nconf-cfg.sh line 41:
	echo -lncurses -lmenu -lpanel > ${libs}
                                        ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	echo -lncurses -lmenu -lpanel > "${libs}"

For more information:
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
