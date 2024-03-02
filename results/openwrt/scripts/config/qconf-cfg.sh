
In openwrt/scripts/config/qconf-cfg.sh line 11:
if [ -z "$(command -v ${HOSTPKG_CONFIG})" ]; then
                      ^---------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
if [ -z "$(command -v "${HOSTPKG_CONFIG}")" ]; then


In openwrt/scripts/config/qconf-cfg.sh line 18:
if ${HOSTPKG_CONFIG} --exists $PKG6; then
                              ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
if ${HOSTPKG_CONFIG} --exists "$PKG6"; then


In openwrt/scripts/config/qconf-cfg.sh line 19:
	${HOSTPKG_CONFIG} --cflags ${PKG6} > ${cflags}
                                   ^-----^ SC2086: Double quote to prevent globbing and word splitting.
                                             ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	${HOSTPKG_CONFIG} --cflags "${PKG6}" > "${cflags}"


In openwrt/scripts/config/qconf-cfg.sh line 21:
	echo -std=c++17 >> ${cflags}
                           ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	echo -std=c++17 >> "${cflags}"


In openwrt/scripts/config/qconf-cfg.sh line 22:
	${HOSTPKG_CONFIG} --libs ${PKG6} > ${libs}
                                 ^-----^ SC2086: Double quote to prevent globbing and word splitting.
                                           ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	${HOSTPKG_CONFIG} --libs "${PKG6}" > "${libs}"


In openwrt/scripts/config/qconf-cfg.sh line 23:
	${HOSTPKG_CONFIG} --variable=libexecdir Qt6Core > ${bin}
                                                          ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	${HOSTPKG_CONFIG} --variable=libexecdir Qt6Core > "${bin}"


In openwrt/scripts/config/qconf-cfg.sh line 27:
if ${HOSTPKG_CONFIG} --exists $PKG5; then
                              ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
if ${HOSTPKG_CONFIG} --exists "$PKG5"; then


In openwrt/scripts/config/qconf-cfg.sh line 28:
	${HOSTPKG_CONFIG} --cflags ${PKG5} > ${cflags}
                                   ^-----^ SC2086: Double quote to prevent globbing and word splitting.
                                             ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	${HOSTPKG_CONFIG} --cflags "${PKG5}" > "${cflags}"


In openwrt/scripts/config/qconf-cfg.sh line 29:
	${HOSTPKG_CONFIG} --libs ${PKG5} > ${libs}
                                 ^-----^ SC2086: Double quote to prevent globbing and word splitting.
                                           ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	${HOSTPKG_CONFIG} --libs "${PKG5}" > "${libs}"


In openwrt/scripts/config/qconf-cfg.sh line 30:
	${HOSTPKG_CONFIG} --variable=host_bins Qt5Core > ${bin}
                                                         ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	${HOSTPKG_CONFIG} --variable=host_bins Qt5Core > "${bin}"

For more information:
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
