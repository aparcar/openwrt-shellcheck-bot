
In openwrt/target/linux/mvebu/base-files/sbin/fan_ctrl.sh line 22:
if [ "$CPU_TEMP" -ge "$CPU_HIGH" -o "$DDR_TEMP" -ge "$DDR_HIGH" -o "$WIFI_TEMP" -ge "$WIFI_HIGH" ];then
                                 ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.
                                                                ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/target/linux/mvebu/base-files/sbin/fan_ctrl.sh line 24:
elif [ "$CPU_TEMP" -ge "$CPU_LOW" -o "$DDR_TEMP" -ge "$DDR_LOW" -o "$WIFI_TEMP" -ge "$WIFI_LOW" ];then
                                  ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.
                                                                ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.

For more information:
  https://www.shellcheck.net/wiki/SC2166 -- Prefer [ p ] || [ q ] as [ p -o q...
