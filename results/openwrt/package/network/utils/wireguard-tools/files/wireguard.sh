
In openwrt/package/network/utils/wireguard-tools/files/wireguard.sh line 12:
	. /lib/functions.sh
          ^---------------^ SC1091: Not following: /lib/functions.sh was not specified as input (see shellcheck -x).


In openwrt/package/network/utils/wireguard-tools/files/wireguard.sh line 13:
	. ../netifd-proto.sh
          ^----------------^ SC1091: Not following: ../netifd-proto.sh was not specified as input (see shellcheck -x).


In openwrt/package/network/utils/wireguard-tools/files/wireguard.sh line 78:
	if [ ${route_allowed_ips} -ne 0 ]; then
             ^------------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	if [ "${route_allowed_ips}" -ne 0 ]; then


In openwrt/package/network/utils/wireguard-tools/files/wireguard.sh line 138:
	${WG} setconf ${config} "${wg_cfg}"
                      ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	${WG} setconf "${config}" "${wg_cfg}"

For more information:
  https://www.shellcheck.net/wiki/SC1091 -- Not following: ../netifd-proto.sh...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
