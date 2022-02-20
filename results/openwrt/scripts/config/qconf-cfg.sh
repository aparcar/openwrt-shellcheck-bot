
In openwrt/scripts/config/qconf-cfg.sh line 13:
if pkg-config --exists $PKG; then
                       ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
if pkg-config --exists "$PKG"; then


In openwrt/scripts/config/qconf-cfg.sh line 14:
	echo cflags=\"-std=c++11 -fPIC $(pkg-config --cflags $PKG)\"
                                       ^-------------------------^ SC2046: Quote this to prevent word splitting.
                                                             ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	echo cflags=\"-std=c++11 -fPIC $(pkg-config --cflags "$PKG")\"


In openwrt/scripts/config/qconf-cfg.sh line 15:
	echo libs=\"$(pkg-config --libs $PKG)\"
                    ^-----------------------^ SC2046: Quote this to prevent word splitting.
                                        ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	echo libs=\"$(pkg-config --libs "$PKG")\"


In openwrt/scripts/config/qconf-cfg.sh line 16:
	echo moc=\"$(pkg-config --variable=host_bins Qt5Core)/moc\"
                   ^-- SC2046: Quote this to prevent word splitting.

For more information:
  https://www.shellcheck.net/wiki/SC2046 -- Quote this to prevent word splitt...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
