
In openwrt/package/base-files/files/sbin/led.sh line 10:
	config_get name $1 name
                        ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	config_get name "$1" name


In openwrt/package/base-files/files/sbin/led.sh line 11:
	config_get sysfs $1 sysfs
                         ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	config_get sysfs "$1" sysfs


In openwrt/package/base-files/files/sbin/led.sh line 12:
	[ "$name" = "$NAME" -o "$sysfs" = "$NAME" -a -e "/sys/class/leds/${sysfs}" ] && {
                            ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.
                                                  ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/base-files/files/sbin/led.sh line 14:
			echo 1 >/sys/class/leds/${sysfs}/brightness \
                                                ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			echo 1 >/sys/class/leds/"${sysfs}"/brightness \


In openwrt/package/base-files/files/sbin/led.sh line 15:
			|| echo 0 >/sys/class/leds/${sysfs}/brightness
                                                   ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			|| echo 0 >/sys/class/leds/"${sysfs}"/brightness


In openwrt/package/base-files/files/sbin/led.sh line 20:
[ "$1" = "clear" -o "$1" = "set" ] &&
                 ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.

For more information:
  https://www.shellcheck.net/wiki/SC2166 -- Prefer [ p ] && [ q ] as [ p -a q...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
