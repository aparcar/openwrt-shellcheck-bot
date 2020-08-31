
In openwrt/package/network/utils/wireguard-tools/files/wireguard.sh line 78:
	if [ ${route_allowed_ips} -ne 0 ]; then
             ^------------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	if [ "${route_allowed_ips}" -ne 0 ]; then


In openwrt/package/network/utils/wireguard-tools/files/wireguard.sh line 139:
	${WG} setconf ${config} "${wg_cfg}"
                      ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	${WG} setconf "${config}" "${wg_cfg}"

For more information:
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
