
In openwrt/package/network/utils/ltq-dsl-base/files/etc/hotplug.d/dsl/led_dsl.sh line 11:
		led_set_attr $1 "trigger" "netdev"
                             ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		led_set_attr "$1" "trigger" "netdev"


In openwrt/package/network/utils/ltq-dsl-base/files/etc/hotplug.d/dsl/led_dsl.sh line 12:
		led_set_attr $1 "device_name" "$(config_get led_dsl dev)"
                             ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		led_set_attr "$1" "device_name" "$(config_get led_dsl dev)"


In openwrt/package/network/utils/ltq-dsl-base/files/etc/hotplug.d/dsl/led_dsl.sh line 14:
			led_set_attr $1 "$m" "1"
                                     ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			led_set_attr "$1" "$m" "1"


In openwrt/package/network/utils/ltq-dsl-base/files/etc/hotplug.d/dsl/led_dsl.sh line 18:
		led_on $1
                       ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		led_on "$1"


In openwrt/package/network/utils/ltq-dsl-base/files/etc/hotplug.d/dsl/led_dsl.sh line 27:
	  "HANDSHAKE")  led_timer $led 500 500;;
                                  ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	  "HANDSHAKE")  led_timer "$led" 500 500;;


In openwrt/package/network/utils/ltq-dsl-base/files/etc/hotplug.d/dsl/led_dsl.sh line 28:
	  "TRAINING")   led_timer $led 200 200;;
                                  ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	  "TRAINING")   led_timer "$led" 200 200;;


In openwrt/package/network/utils/ltq-dsl-base/files/etc/hotplug.d/dsl/led_dsl.sh line 29:
	  "UP")		led_dsl_up $led;;
                                   ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	  "UP")		led_dsl_up "$led";;


In openwrt/package/network/utils/ltq-dsl-base/files/etc/hotplug.d/dsl/led_dsl.sh line 30:
	  *)		led_off $led
                                ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	  *)		led_off "$led"

For more information:
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
