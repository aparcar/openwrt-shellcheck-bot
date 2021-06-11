
In openwrt/target/linux/x86/base-files/etc/diag.sh line 30:
		if [ "$name" = "DIAG" -a "$default" = "1" ]; then
                                      ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/target/linux/x86/base-files/etc/diag.sh line 46:
	if [ "$name" = "DIAG" -a "$default" = "1" ]; then
                              ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/target/linux/x86/base-files/etc/diag.sh line 80:
	done)
        ^-- SC1010: Use semicolon or linefeed before 'done' (or quote to make it literal).

For more information:
  https://www.shellcheck.net/wiki/SC1010 -- Use semicolon or linefeed before ...
  https://www.shellcheck.net/wiki/SC2166 -- Prefer [ p ] && [ q ] as [ p -a q...
