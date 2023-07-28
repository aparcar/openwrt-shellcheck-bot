
In openwrt/target/linux/mediatek/filogic/base-files/lib/upgrade/platform.sh line 40:
	case "$board" in
        ^-- SC1009: The mentioned syntax error was in this case expression.


In openwrt/target/linux/mediatek/filogic/base-files/lib/upgrade/platform.sh line 41:
	xiaomi,mi-router-wr30u-stock)
        ^-- SC1073: Couldn't parse this case item. Fix to allow more checks.


In openwrt/target/linux/mediatek/filogic/base-files/lib/upgrade/platform.sh line 43:
	xiaomi,redmi-router-ax6000-stock)
                                        ^-- SC1072:  Fix any mentioned problems and try again.
                                        ^-- SC1074: Did you forget the ;; after the previous case item?

For more information:
  https://www.shellcheck.net/wiki/SC1074 -- Did you forget the ;; after the p...
  https://www.shellcheck.net/wiki/SC1072 --  Fix any mentioned problems and t...
  https://www.shellcheck.net/wiki/SC1073 -- Couldn't parse this case item. Fi...
