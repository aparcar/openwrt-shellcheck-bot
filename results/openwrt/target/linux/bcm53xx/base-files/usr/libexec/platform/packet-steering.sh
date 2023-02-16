
In openwrt/target/linux/bcm53xx/base-files/usr/libexec/platform/packet-steering.sh line 13:
if [ ${flow_offloading_hw:-0} -gt 0 ]; then
     ^----------------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
if [ "${flow_offloading_hw:-0}" -gt 0 ]; then


In openwrt/target/linux/bcm53xx/base-files/usr/libexec/platform/packet-steering.sh line 17:
elif [ ${flow_offloading:-0} -gt 0 ]; then
       ^-------------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
elif [ "${flow_offloading:-0}" -gt 0 ]; then

For more information:
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
