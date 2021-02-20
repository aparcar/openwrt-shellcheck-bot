
In openwrt/target/linux/bcm27xx/base-files/etc/diag.sh line 12:
	raspberrypi,3-model-b |\
                             ^-- SC1018: This is a unicode non-breaking space. Delete and retype it.


In openwrt/target/linux/bcm27xx/base-files/etc/diag.sh line 38:
	done)
        ^-- SC1010: Use semicolon or linefeed before 'done' (or quote to make it literal).

For more information:
  https://www.shellcheck.net/wiki/SC1018 -- This is a unicode non-breaking sp...
  https://www.shellcheck.net/wiki/SC1010 -- Use semicolon or linefeed before ...
