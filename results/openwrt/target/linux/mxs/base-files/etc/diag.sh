
In openwrt/target/linux/mxs/base-files/etc/diag.sh line 16:
		status_led=$(cd /sys/class/leds && ls -1d *:status 2> /dev/null | head -n 1)
                                                   ^--------------------------^ SC2012: Use find instead of ls to better handle non-alphanumeric filenames.
                                                          ^-- SC2035: Use ./*glob* or -- *glob* so names with dashes won't become options.


In openwrt/target/linux/mxs/base-files/etc/diag.sh line 34:
	done)
        ^-- SC1010: Use semicolon or linefeed before 'done' (or quote to make it literal).

For more information:
  https://www.shellcheck.net/wiki/SC1010 -- Use semicolon or linefeed before ...
  https://www.shellcheck.net/wiki/SC2012 -- Use find instead of ls to better ...
  https://www.shellcheck.net/wiki/SC2035 -- Use ./*glob* or -- *glob* so name...
