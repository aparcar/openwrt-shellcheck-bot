
In openwrt/target/linux/kirkwood/base-files/sbin/fan_ctrl.sh line 9:
if [ ! -e /sys/devices/platform/ocp@f1000000/f1011000.i2c/i2c-0/0-001b/hwmon/hwmon?/pwm1 ]; then
          ^-- SC2144: -e doesn't work with globs. Use a for loop.


In openwrt/target/linux/kirkwood/base-files/sbin/fan_ctrl.sh line 16:
	echo "255" > $FAN_CTRL
                     ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	echo "255" > "$FAN_CTRL"


In openwrt/target/linux/kirkwood/base-files/sbin/fan_ctrl.sh line 18:
	echo "100" > $FAN_CTRL
                     ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	echo "100" > "$FAN_CTRL"


In openwrt/target/linux/kirkwood/base-files/sbin/fan_ctrl.sh line 20:
	echo "50" > $FAN_CTRL
                    ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	echo "50" > "$FAN_CTRL"


In openwrt/target/linux/kirkwood/base-files/sbin/fan_ctrl.sh line 22:
	echo "0" > $FAN_CTRL
                   ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	echo "0" > "$FAN_CTRL"

For more information:
  https://www.shellcheck.net/wiki/SC2144 -- -e doesn't work with globs. Use a...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
