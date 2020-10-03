
In openwrt/package/base-files/files/lib/functions/migrations.sh line 7:
	local tuples="$@"
                     ^--^ SC2124: Assigning an array to a string! Assign as array, or use * instead of @ to concatenate.


In openwrt/package/base-files/files/lib/functions/migrations.sh line 11:
	config_get sysfs ${cfg} sysfs
                         ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	config_get sysfs "${cfg}" sysfs


In openwrt/package/base-files/files/lib/functions/migrations.sh line 12:
	config_get name ${cfg} name
                        ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	config_get name "${cfg}" name


In openwrt/package/base-files/files/lib/functions/migrations.sh line 21:
		new_sysfs=$(echo ${sysfs} | sed "s/${old}/${new}/")
                            ^-- SC2001: See if you can use ${variable//search/replace} instead.
                                 ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		new_sysfs=$(echo "${sysfs}" | sed "s/${old}/${new}/")


In openwrt/package/base-files/files/lib/functions/migrations.sh line 25:
		uci set system.${cfg}.sysfs="${new_sysfs}"
                               ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		uci set system."${cfg}".sysfs="${new_sysfs}"


In openwrt/package/base-files/files/lib/functions/migrations.sh line 33:
	local exceptions="$@"
                         ^--^ SC2124: Assigning an array to a string! Assign as array, or use * instead of @ to concatenate.


In openwrt/package/base-files/files/lib/functions/migrations.sh line 38:
	config_get sysfs ${cfg} sysfs
                         ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	config_get sysfs "${cfg}" sysfs


In openwrt/package/base-files/files/lib/functions/migrations.sh line 39:
	config_get name ${cfg} name
                        ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	config_get name "${cfg}" name


In openwrt/package/base-files/files/lib/functions/migrations.sh line 49:
	new_sysfs=$(echo ${sysfs} | sed "s/^[^:]*://")
                    ^-- SC2001: See if you can use ${variable//search/replace} instead.
                         ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	new_sysfs=$(echo "${sysfs}" | sed "s/^[^:]*://")


In openwrt/package/base-files/files/lib/functions/migrations.sh line 51:
	uci set system.${cfg}.sysfs="${new_sysfs}"
                       ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	uci set system."${cfg}".sysfs="${new_sysfs}"


In openwrt/package/base-files/files/lib/functions/migrations.sh line 68:
	[ -n "$(uci changes ${realm})" ] && uci -q commit ${realm}
                            ^------^ SC2086: Double quote to prevent globbing and word splitting.
                                                          ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	[ -n "$(uci changes "${realm}")" ] && uci -q commit "${realm}"

For more information:
  https://www.shellcheck.net/wiki/SC2124 -- Assigning an array to a string! A...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
  https://www.shellcheck.net/wiki/SC2001 -- See if you can use ${variable//se...
