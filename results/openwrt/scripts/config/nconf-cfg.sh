
In openwrt/scripts/config/nconf-cfg.sh line 8:
	if pkg-config --exists $PKG; then
                               ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	if pkg-config --exists "$PKG"; then


In openwrt/scripts/config/nconf-cfg.sh line 9:
		echo cflags=\"$(pkg-config --cflags $PKG)\"
                              ^-------------------------^ SC2046: Quote this to prevent word splitting.
                                                    ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		echo cflags=\"$(pkg-config --cflags "$PKG")\"


In openwrt/scripts/config/nconf-cfg.sh line 10:
		echo libs=\"$(pkg-config --libs $PKG)\"
                            ^-----------------------^ SC2046: Quote this to prevent word splitting.
                                                ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		echo libs=\"$(pkg-config --libs "$PKG")\"


In openwrt/scripts/config/nconf-cfg.sh line 14:
	if pkg-config --exists $PKG2; then
                               ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	if pkg-config --exists "$PKG2"; then


In openwrt/scripts/config/nconf-cfg.sh line 15:
		echo cflags=\"$(pkg-config --cflags $PKG2)\"
                              ^--------------------------^ SC2046: Quote this to prevent word splitting.
                                                    ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		echo cflags=\"$(pkg-config --cflags "$PKG2")\"


In openwrt/scripts/config/nconf-cfg.sh line 16:
		echo libs=\"$(pkg-config --libs $PKG2)\"
                            ^------------------------^ SC2046: Quote this to prevent word splitting.
                                                ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		echo libs=\"$(pkg-config --libs "$PKG2")\"

For more information:
  https://www.shellcheck.net/wiki/SC2046 -- Quote this to prevent word splitt...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
