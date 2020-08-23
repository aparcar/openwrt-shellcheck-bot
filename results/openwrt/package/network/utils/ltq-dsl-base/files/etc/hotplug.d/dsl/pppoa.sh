
In openwrt/package/network/utils/ltq-dsl-base/files/etc/hotplug.d/dsl/pppoa.sh line 5:
. /usr/share/libubox/jshn.sh
  ^------------------------^ SC1091: Not following: /usr/share/libubox/jshn.sh was not specified as input (see shellcheck -x).


In openwrt/package/network/utils/ltq-dsl-base/files/etc/hotplug.d/dsl/pppoa.sh line 6:
. /lib/functions.sh
  ^---------------^ SC1091: Not following: /lib/functions.sh was not specified as input (see shellcheck -x).


In openwrt/package/network/utils/ltq-dsl-base/files/etc/hotplug.d/dsl/pppoa.sh line 14:
	json_load "$(ifstatus $ifc)"
                              ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	json_load "$(ifstatus "$ifc")"

For more information:
  https://www.shellcheck.net/wiki/SC1091 -- Not following: /lib/functions.sh ...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
