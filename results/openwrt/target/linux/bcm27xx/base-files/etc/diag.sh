
In openwrt/target/linux/bcm27xx/base-files/etc/diag.sh line 17:
		led_set_attr $status_led "trigger" "$led_trigger"
                             ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		led_set_attr "$status_led" "trigger" "$led_trigger"


In openwrt/target/linux/bcm27xx/base-files/etc/diag.sh line 40:
	done)
        ^-- SC1010: Use semicolon or linefeed before 'done' (or quote to make it literal).

For more information:
  https://www.shellcheck.net/wiki/SC1010 -- Use semicolon or linefeed before ...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
