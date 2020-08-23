
In openwrt/scripts/config/mconf-cfg.sh line 9:
		echo cflags=\"$(pkg-config --cflags $PKG)\"
                              ^-------------------------^ SC2046: Quote this to prevent word splitting.


In openwrt/scripts/config/mconf-cfg.sh line 10:
		echo libs=\"$(pkg-config --libs $PKG)\"
                            ^-----------------------^ SC2046: Quote this to prevent word splitting.


In openwrt/scripts/config/mconf-cfg.sh line 15:
		echo cflags=\"$(pkg-config --cflags $PKG2)\"
                              ^--------------------------^ SC2046: Quote this to prevent word splitting.


In openwrt/scripts/config/mconf-cfg.sh line 16:
		echo libs=\"$(pkg-config --libs $PKG2)\"
                            ^------------------------^ SC2046: Quote this to prevent word splitting.

For more information:
  https://www.shellcheck.net/wiki/SC2046 -- Quote this to prevent word splitt...
