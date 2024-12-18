
In openwrt/package/system/procd/files/procd.sh line 50:
	local service_name="$(basename ${basescript:-$initscript})"
                                       ^------------------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local service_name="$(basename "${basescript:-$initscript}")"


In openwrt/package/system/procd/files/procd.sh line 53:
	if [ "$?" != "0" ]; then
             ^--^ SC2181: Check exit code directly with e.g. 'if mycmd;', not indirectly with $?.


In openwrt/package/system/procd/files/procd.sh line 56:
		if [ "$?" != "0" ]; then
                     ^--^ SC2181: Check exit code directly with e.g. 'if mycmd;', not indirectly with $?.


In openwrt/package/system/procd/files/procd.sh line 67:
	json_set_namespace $old_cb
                           ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	json_set_namespace "$old_cb"


In openwrt/package/system/procd/files/procd.sh line 109:
	_procd_ubus_call ${1:-set}
                         ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	_procd_ubus_call "${1:-set}"


In openwrt/package/system/procd/files/procd.sh line 143:
_procd_open_instance() {
^-- SC2120: _procd_open_instance references arguments, but none are ever passed.


In openwrt/package/system/procd/files/procd.sh line 146:
	_PROCD_INSTANCE_SEQ="$(($_PROCD_INSTANCE_SEQ + 1))"
                                ^------------------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/system/procd/files/procd.sh line 153:
	let '_procd_trigger_open = _procd_trigger_open + 1'
        ^-- SC2219: Instead of 'let expr', prefer (( expr )) .


In openwrt/package/system/procd/files/procd.sh line 159:
	let '_procd_trigger_open = _procd_trigger_open - 1'
        ^-- SC2219: Instead of 'let expr', prefer (( expr )) .


In openwrt/package/system/procd/files/procd.sh line 165:
	let '_procd_data_open = _procd_data_open + 1'
        ^-- SC2219: Instead of 'let expr', prefer (( expr )) .


In openwrt/package/system/procd/files/procd.sh line 171:
	let '_procd_data_open = _procd_data_open - 1'
        ^-- SC2219: Instead of 'let expr', prefer (( expr )) .


In openwrt/package/system/procd/files/procd.sh line 192:
	for a in $@; do
                 ^-- SC2068: Double quote array expansions to avoid re-splitting elements.


In openwrt/package/system/procd/files/procd.sh line 214:
	[ $? = 0 ] || return
          ^-- SC2181: Check exit code directly with e.g. 'if mycmd;', not indirectly with $?.


In openwrt/package/system/procd/files/procd.sh line 216:
	[ $? = 0 ] || {
          ^-- SC2181: Check exit code directly with e.g. 'if mycmd;', not indirectly with $?.


In openwrt/package/system/procd/files/procd.sh line 220:
	for a in $@; do
                 ^-- SC2068: Double quote array expansions to avoid re-splitting elements.


In openwrt/package/system/procd/files/procd.sh line 231:
	[ $? = 0 ] || return
          ^-- SC2181: Check exit code directly with e.g. 'if mycmd;', not indirectly with $?.


In openwrt/package/system/procd/files/procd.sh line 233:
	[ $? = 0 ] || {
          ^-- SC2181: Check exit code directly with e.g. 'if mycmd;', not indirectly with $?.


In openwrt/package/system/procd/files/procd.sh line 237:
	for a in $@; do
                 ^-- SC2068: Double quote array expansions to avoid re-splitting elements.


In openwrt/package/system/procd/files/procd.sh line 263:
			json_add_int "$type" $(kill -l "$1")
                                             ^-------------^ SC2046: Quote this to prevent word splitting.


In openwrt/package/system/procd/files/procd.sh line 304:
	local name=$(basename ${script:-$initscript})
                              ^--------------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local name=$(basename "${script:-$initscript}")


In openwrt/package/system/procd/files/procd.sh line 307:
	_procd_add_interface_trigger "interface.*" $1 /etc/init.d/$name reload
                                                   ^-- SC2086: Double quote to prevent globbing and word splitting.
                                                                  ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	_procd_add_interface_trigger "interface.*" "$1" /etc/init.d/"$name" reload


In openwrt/package/system/procd/files/procd.sh line 334:
	local name=$(basename ${script:-$initscript})
                              ^--------------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local name=$(basename "${script:-$initscript}")


In openwrt/package/system/procd/files/procd.sh line 337:
	_procd_add_data_trigger $1 /etc/init.d/$name reload
                                ^-- SC2086: Double quote to prevent globbing and word splitting.
                                               ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	_procd_add_data_trigger "$1" /etc/init.d/"$name" reload


In openwrt/package/system/procd/files/procd.sh line 389:
	_procd_add_array_data "run_script" /etc/init.d/$name $action
                                                       ^---^ SC2086: Double quote to prevent globbing and word splitting.
                                                             ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	_procd_add_array_data "run_script" /etc/init.d/"$name" "$action"


In openwrt/package/system/procd/files/procd.sh line 403:
	local name=$(basename ${script:-$initscript})
                              ^--------------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local name=$(basename "${script:-$initscript}")


In openwrt/package/system/procd/files/procd.sh line 406:
	_procd_add_mount_trigger mount.add $action "$mountpoints"
                                           ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	_procd_add_mount_trigger mount.add "$action" "$mountpoints"


In openwrt/package/system/procd/files/procd.sh line 456:
	local name=$(basename ${script:-$initscript})
                              ^--------------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local name=$(basename "${script:-$initscript}")


In openwrt/package/system/procd/files/procd.sh line 461:
		_procd_add_config_trigger "config.change" "$file" /etc/init.d/$name reload
                                                                              ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		_procd_add_config_trigger "config.change" "$file" /etc/init.d/"$name" reload


In openwrt/package/system/procd/files/procd.sh line 468:
	$@
        ^-- SC2068: Double quote array expansions to avoid re-splitting elements.


In openwrt/package/system/procd/files/procd.sh line 477:
	[ $? = 0 ] || {
          ^-- SC2181: Check exit code directly with e.g. 'if mycmd;', not indirectly with $?.


In openwrt/package/system/procd/files/procd.sh line 504:
			_procd_add_array_data ${respawn_threshold:-3600} ${respawn_timeout:-5} ${respawn_retry:-5}
                                              ^------------------------^ SC2086: Double quote to prevent globbing and word splitting.
                                                                         ^-------------------^ SC2086: Double quote to prevent globbing and word splitting.
                                                                                               ^-----------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			_procd_add_array_data "${respawn_threshold:-3600}" "${respawn_timeout:-5}" "${respawn_retry:-5}"


In openwrt/package/system/procd/files/procd.sh line 513:
	_procd_open_instance
        ^------------------^ SC2119: Use _procd_open_instance "$@" if function's $1 should mean script's $1.


In openwrt/package/system/procd/files/procd.sh line 551:
	[ -n "$instance" -a "$instance" != "*" ] && json_add_string instance "$instance"
                         ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/system/procd/files/procd.sh line 603:
procd_open_data() {
^-- SC2120: procd_open_data references arguments, but none are ever passed.


In openwrt/package/system/procd/files/procd.sh line 611:
	json_set_namespace $__procd_old_cb
                           ^-------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	json_set_namespace "$__procd_old_cb"


In openwrt/package/system/procd/files/procd.sh line 646:
	procd_open_data
        ^-------------^ SC2119: Use procd_open_data "$@" if function's $1 should mean script's $1.


In openwrt/package/system/procd/files/procd.sh line 664:
	[ "$_error" = "0" ] || $(/sbin/validate_data "$_package" "$_type" "$_name" "$@" 1> /dev/null)
                               ^-- SC2091: Remove surrounding $() to avoid executing output.

For more information:
  https://www.shellcheck.net/wiki/SC2068 -- Double quote array expansions to ...
  https://www.shellcheck.net/wiki/SC2046 -- Quote this to prevent word splitt...
  https://www.shellcheck.net/wiki/SC2091 -- Remove surrounding $() to avoid e...
