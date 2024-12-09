
In openwrt/package/network/config/wifi-scripts/files-ucode/lib/netifd/wireless/mac80211.sh line 5:
import { set_default, log } from 'wifi.common';
       ^-- SC1083: This { is literal. Check expression (missing ;/\n?) or quote it.
                          ^-- SC1083: This } is literal. Check expression (missing ;/\n?) or quote it.


In openwrt/package/network/config/wifi-scripts/files-ucode/lib/netifd/wireless/mac80211.sh line 6:
import { validate, dump_options } from 'wifi.validate';
       ^-- SC1083: This { is literal. Check expression (missing ;/\n?) or quote it.
                                ^-- SC1083: This } is literal. Check expression (missing ;/\n?) or quote it.


In openwrt/package/network/config/wifi-scripts/files-ucode/lib/netifd/wireless/mac80211.sh line 27:
function phy_suffix(radio, sep) {
                    ^-- SC1065: Trying to declare parameters? Don't. Use () and refer to params as $1, $2..
                                ^-- SC1009: The mentioned syntax error was in this brace group.


In openwrt/package/network/config/wifi-scripts/files-ucode/lib/netifd/wireless/mac80211.sh line 28:
	if (radio == null || radio < 0)
        ^-- SC1073: Couldn't parse this if expression. Fix to allow more checks.
                  ^-- SC1097: Unexpected ==. For assignment, use =. For comparison, use [/[[.


In openwrt/package/network/config/wifi-scripts/files-ucode/lib/netifd/wireless/mac80211.sh line 31:
}
^-- SC1050: Expected 'then'.
 ^-- SC1072: Unexpected keyword/token. Fix any mentioned problems and try again.

For more information:
  https://www.shellcheck.net/wiki/SC1050 -- Expected 'then'.
  https://www.shellcheck.net/wiki/SC1065 -- Trying to declare parameters? Don...
  https://www.shellcheck.net/wiki/SC1097 -- Unexpected ==. For assignment, us...
