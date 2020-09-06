
In openwrt/package/base-files/files/lib/functions/leds.sh line 17:
	local ledpath=$(get_dt_led_path $1)
                                        ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local ledpath=$(get_dt_led_path "$1")


In openwrt/package/base-files/files/lib/functions/leds.sh line 32:
	led_set_attr $1 "trigger" "timer"
                     ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	led_set_attr "$1" "trigger" "timer"


In openwrt/package/base-files/files/lib/functions/leds.sh line 33:
	led_set_attr $1 "delay_on" "$2"
                     ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	led_set_attr "$1" "delay_on" "$2"


In openwrt/package/base-files/files/lib/functions/leds.sh line 34:
	led_set_attr $1 "delay_off" "$3"
                     ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	led_set_attr "$1" "delay_off" "$3"


In openwrt/package/base-files/files/lib/functions/leds.sh line 38:
	led_set_attr $1 "trigger" "none"
                     ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	led_set_attr "$1" "trigger" "none"


In openwrt/package/base-files/files/lib/functions/leds.sh line 39:
	led_set_attr $1 "brightness" 255
                     ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	led_set_attr "$1" "brightness" 255


In openwrt/package/base-files/files/lib/functions/leds.sh line 43:
	led_set_attr $1 "trigger" "none"
                     ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	led_set_attr "$1" "trigger" "none"


In openwrt/package/base-files/files/lib/functions/leds.sh line 44:
	led_set_attr $1 "brightness" 0
                     ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	led_set_attr "$1" "brightness" 0


In openwrt/package/base-files/files/lib/functions/leds.sh line 49:
	local ledpath=$(get_dt_led_path $1)
                                        ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local ledpath=$(get_dt_led_path "$1")


In openwrt/package/base-files/files/lib/functions/leds.sh line 55:
		led_set_attr "$(get_dt_led $1)" "trigger" "$trigger"
                                           ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		led_set_attr "$(get_dt_led "$1")" "trigger" "$trigger"


In openwrt/package/base-files/files/lib/functions/leds.sh line 59:
	led_timer $status_led "$1" "$2"
                  ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	led_timer "$status_led" "$1" "$2"


In openwrt/package/base-files/files/lib/functions/leds.sh line 60:
	[ -n "$status_led2" ] && led_timer $status_led2 "$1" "$2"
                                           ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	[ -n "$status_led2" ] && led_timer "$status_led2" "$1" "$2"


In openwrt/package/base-files/files/lib/functions/leds.sh line 64:
	led_set_attr $status_led "trigger" "heartbeat"
                     ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	led_set_attr "$status_led" "trigger" "heartbeat"


In openwrt/package/base-files/files/lib/functions/leds.sh line 68:
	led_on $status_led
               ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	led_on "$status_led"


In openwrt/package/base-files/files/lib/functions/leds.sh line 69:
	[ -n "$status_led2" ] && led_on $status_led2
                                        ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	[ -n "$status_led2" ] && led_on "$status_led2"


In openwrt/package/base-files/files/lib/functions/leds.sh line 73:
	led_off $status_led
                ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	led_off "$status_led"


In openwrt/package/base-files/files/lib/functions/leds.sh line 74:
	[ -n "$status_led2" ] && led_off $status_led2
                                         ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	[ -n "$status_led2" ] && led_off "$status_led2"


In openwrt/package/base-files/files/lib/functions/leds.sh line 78:
	led_timer $status_led 1000 1000
                  ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	led_timer "$status_led" 1000 1000


In openwrt/package/base-files/files/lib/functions/leds.sh line 82:
	led_timer $status_led 100 100
                  ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	led_timer "$status_led" 100 100


In openwrt/package/base-files/files/lib/functions/leds.sh line 86:
	led_timer $status_led 100 100
                  ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	led_timer "$status_led" 100 100


In openwrt/package/base-files/files/lib/functions/leds.sh line 90:
	led_timer $status_led 50 50
                  ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	led_timer "$status_led" 50 50


In openwrt/package/base-files/files/lib/functions/leds.sh line 94:
	led_timer $status_led 200 200
                  ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	led_timer "$status_led" 200 200

For more information:
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
