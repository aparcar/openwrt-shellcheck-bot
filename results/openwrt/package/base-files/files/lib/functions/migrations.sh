
In openwrt/package/base-files/files/lib/functions/migrations.sh line 5:
	local tuples="$@"
                     ^--^ SC2124: Assigning an array to a string! Assign as array, or use * instead of @ to concatenate.


In openwrt/package/base-files/files/lib/functions/migrations.sh line 9:
	config_get sysfs ${cfg} sysfs
                         ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	config_get sysfs "${cfg}" sysfs


In openwrt/package/base-files/files/lib/functions/migrations.sh line 10:
	config_get name ${cfg} name
                        ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	config_get name "${cfg}" name


In openwrt/package/base-files/files/lib/functions/migrations.sh line 19:
		new_sysfs=$(echo ${sysfs} | sed "s/${old}/${new}/")
                            ^-- SC2001: See if you can use ${variable//search/replace} instead.
                                 ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		new_sysfs=$(echo "${sysfs}" | sed "s/${old}/${new}/")


In openwrt/package/base-files/files/lib/functions/migrations.sh line 23:
		uci set system.${cfg}.sysfs="${new_sysfs}"
                               ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		uci set system."${cfg}".sysfs="${new_sysfs}"


In openwrt/package/base-files/files/lib/functions/migrations.sh line 31:
	local exceptions="$@"
                         ^--^ SC2124: Assigning an array to a string! Assign as array, or use * instead of @ to concatenate.


In openwrt/package/base-files/files/lib/functions/migrations.sh line 36:
	config_get sysfs ${cfg} sysfs
                         ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	config_get sysfs "${cfg}" sysfs


In openwrt/package/base-files/files/lib/functions/migrations.sh line 37:
	config_get name ${cfg} name
                        ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	config_get name "${cfg}" name


In openwrt/package/base-files/files/lib/functions/migrations.sh line 47:
	new_sysfs=$(echo ${sysfs} | sed "s/^[^:]*://")
                    ^-- SC2001: See if you can use ${variable//search/replace} instead.
                         ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	new_sysfs=$(echo "${sysfs}" | sed "s/^[^:]*://")


In openwrt/package/base-files/files/lib/functions/migrations.sh line 49:
	uci set system.${cfg}.sysfs="${new_sysfs}"
                       ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	uci set system."${cfg}".sysfs="${new_sysfs}"


In openwrt/package/base-files/files/lib/functions/migrations.sh line 66:
	[ -n "$(uci changes ${realm})" ] && uci -q commit ${realm}
                            ^------^ SC2086: Double quote to prevent globbing and word splitting.
                                                          ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	[ -n "$(uci changes "${realm}")" ] && uci -q commit "${realm}"

For more information:
  https://www.shellcheck.net/wiki/SC2124 -- Assigning an array to a string! A...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
  https://www.shellcheck.net/wiki/SC2001 -- See if you can use ${variable//se...
