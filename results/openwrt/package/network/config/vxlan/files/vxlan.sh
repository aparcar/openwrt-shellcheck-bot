
In openwrt/package/network/config/vxlan/files/vxlan.sh line 45:
		${lladdr:-00:00:00:00:00:00} \
                ^--------------------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		"${lladdr:-00:00:00:00:00:00}" \


In openwrt/package/network/config/vxlan/files/vxlan.sh line 46:
		dev ${cfg}                   \
                    ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		dev "${cfg}"                   \


In openwrt/package/network/config/vxlan/files/vxlan.sh line 47:
		dst ${dst}                   \
                    ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		dst "${dst}"                   \

For more information:
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
