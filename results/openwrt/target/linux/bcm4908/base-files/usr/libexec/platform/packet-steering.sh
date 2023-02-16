
In openwrt/target/linux/bcm4908/base-files/usr/libexec/platform/packet-steering.sh line 11:
	if [ ${flow_offloading_hw:-0} -gt 0 ]; then
             ^----------------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	if [ "${flow_offloading_hw:-0}" -gt 0 ]; then


In openwrt/target/linux/bcm4908/base-files/usr/libexec/platform/packet-steering.sh line 15:
	elif [ ${flow_offloading:-0} -gt 0 ]; then
               ^-------------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	elif [ "${flow_offloading:-0}" -gt 0 ]; then

For more information:
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
