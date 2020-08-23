
In openwrt/scripts/config/qconf-cfg.sh line 14:
if pkg-config --exists $PKG; then
                       ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
if pkg-config --exists "$PKG"; then


In openwrt/scripts/config/qconf-cfg.sh line 15:
	echo cflags=\"-std=c++11 -fPIC $(pkg-config --cflags Qt5Core Qt5Gui Qt5Widgets)\"
                                       ^-- SC2046: Quote this to prevent word splitting.


In openwrt/scripts/config/qconf-cfg.sh line 16:
	echo libs=\"$(pkg-config --libs $PKG)\"
                    ^-----------------------^ SC2046: Quote this to prevent word splitting.
                                        ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	echo libs=\"$(pkg-config --libs "$PKG")\"


In openwrt/scripts/config/qconf-cfg.sh line 17:
	echo moc=\"$(pkg-config --variable=host_bins Qt5Core)/moc\"
                   ^-- SC2046: Quote this to prevent word splitting.


In openwrt/scripts/config/qconf-cfg.sh line 21:
if pkg-config --exists $PKG2; then
                       ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
if pkg-config --exists "$PKG2"; then


In openwrt/scripts/config/qconf-cfg.sh line 22:
	echo cflags=\"$(pkg-config --cflags $PKG2)\"
                      ^--------------------------^ SC2046: Quote this to prevent word splitting.
                                            ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	echo cflags=\"$(pkg-config --cflags "$PKG2")\"


In openwrt/scripts/config/qconf-cfg.sh line 23:
	echo libs=\"$(pkg-config --libs $PKG2)\"
                    ^------------------------^ SC2046: Quote this to prevent word splitting.
                                        ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	echo libs=\"$(pkg-config --libs "$PKG2")\"


In openwrt/scripts/config/qconf-cfg.sh line 24:
	echo moc=\"$(pkg-config --variable=moc_location QtCore)\"
                   ^-- SC2046: Quote this to prevent word splitting.

For more information:
  https://www.shellcheck.net/wiki/SC2046 -- Quote this to prevent word splitt...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
