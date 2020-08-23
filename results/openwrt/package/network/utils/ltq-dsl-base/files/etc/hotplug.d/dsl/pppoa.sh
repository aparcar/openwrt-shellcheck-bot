
In openwrt/package/network/utils/ltq-dsl-base/files/etc/hotplug.d/dsl/pppoa.sh line 14:
	json_load "$(ifstatus $ifc)"
                              ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	json_load "$(ifstatus "$ifc")"

For more information:
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
