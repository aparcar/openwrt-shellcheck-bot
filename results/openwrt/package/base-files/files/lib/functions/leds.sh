
In openwrt/package/base-files/files/lib/functions/leds.sh line 46:
	local ledpath=$(get_dt_led_path $1)
                                        ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local ledpath=$(get_dt_led_path "$1")


In openwrt/package/base-files/files/lib/functions/leds.sh line 62:
	led_set_attr $1 "trigger" "timer"
                     ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	led_set_attr "$1" "trigger" "timer"


In openwrt/package/base-files/files/lib/functions/leds.sh line 63:
	led_set_attr $1 "delay_on" "$2"
                     ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	led_set_attr "$1" "delay_on" "$2"


In openwrt/package/base-files/files/lib/functions/leds.sh line 64:
	led_set_attr $1 "delay_off" "$3"
                     ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	led_set_attr "$1" "delay_off" "$3"


In openwrt/package/base-files/files/lib/functions/leds.sh line 68:
	led_set_attr $1 "trigger" "none"
                     ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	led_set_attr "$1" "trigger" "none"


In openwrt/package/base-files/files/lib/functions/leds.sh line 69:
	led_set_attr $1 "brightness" 255
                     ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	led_set_attr "$1" "brightness" 255


In openwrt/package/base-files/files/lib/functions/leds.sh line 73:
	led_set_attr $1 "trigger" "none"
                     ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	led_set_attr "$1" "trigger" "none"


In openwrt/package/base-files/files/lib/functions/leds.sh line 74:
	led_set_attr $1 "brightness" 0
                     ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	led_set_attr "$1" "brightness" 0


In openwrt/package/base-files/files/lib/functions/leds.sh line 79:
	local ledpath=$(get_dt_led_path $1)
                                        ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local ledpath=$(get_dt_led_path "$1")


In openwrt/package/base-files/files/lib/functions/leds.sh line 85:
		led_set_attr "$(get_dt_led $1)" "trigger" "$trigger"
                                           ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		led_set_attr "$(get_dt_led "$1")" "trigger" "$trigger"


In openwrt/package/base-files/files/lib/functions/leds.sh line 89:
	led_timer $status_led "$1" "$2"
                  ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	led_timer "$status_led" "$1" "$2"


In openwrt/package/base-files/files/lib/functions/leds.sh line 90:
	[ -n "$status_led2" ] && led_timer $status_led2 "$1" "$2"
                                           ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	[ -n "$status_led2" ] && led_timer "$status_led2" "$1" "$2"


In openwrt/package/base-files/files/lib/functions/leds.sh line 94:
	led_set_attr $status_led "trigger" "heartbeat"
                     ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	led_set_attr "$status_led" "trigger" "heartbeat"


In openwrt/package/base-files/files/lib/functions/leds.sh line 98:
	led_on $status_led
               ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	led_on "$status_led"


In openwrt/package/base-files/files/lib/functions/leds.sh line 99:
	[ -n "$status_led2" ] && led_on $status_led2
                                        ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	[ -n "$status_led2" ] && led_on "$status_led2"


In openwrt/package/base-files/files/lib/functions/leds.sh line 103:
	led_off $status_led
                ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	led_off "$status_led"


In openwrt/package/base-files/files/lib/functions/leds.sh line 104:
	[ -n "$status_led2" ] && led_off $status_led2
                                         ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	[ -n "$status_led2" ] && led_off "$status_led2"


In openwrt/package/base-files/files/lib/functions/leds.sh line 108:
	led_timer $status_led 1000 1000
                  ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	led_timer "$status_led" 1000 1000


In openwrt/package/base-files/files/lib/functions/leds.sh line 112:
	led_timer $status_led 100 100
                  ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	led_timer "$status_led" 100 100


In openwrt/package/base-files/files/lib/functions/leds.sh line 116:
	led_timer $status_led 100 100
                  ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	led_timer "$status_led" 100 100


In openwrt/package/base-files/files/lib/functions/leds.sh line 120:
	led_timer $status_led 50 50
                  ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	led_timer "$status_led" 50 50


In openwrt/package/base-files/files/lib/functions/leds.sh line 124:
	led_timer $status_led 200 200
                  ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	led_timer "$status_led" 200 200

For more information:
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
