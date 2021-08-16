
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


In openwrt/package/system/procd/files/procd.sh line 107:
	_procd_ubus_call ${1:-set}
                         ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	_procd_ubus_call "${1:-set}"


In openwrt/package/system/procd/files/procd.sh line 141:
_procd_open_instance() {
^-- SC2120: _procd_open_instance references arguments, but none are ever passed.


In openwrt/package/system/procd/files/procd.sh line 144:
	_PROCD_INSTANCE_SEQ="$(($_PROCD_INSTANCE_SEQ + 1))"
                                ^------------------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/system/procd/files/procd.sh line 151:
	let '_procd_trigger_open = _procd_trigger_open + 1'
        ^-- SC2219: Instead of 'let expr', prefer (( expr )) .


In openwrt/package/system/procd/files/procd.sh line 157:
	let '_procd_trigger_open = _procd_trigger_open - 1'
        ^-- SC2219: Instead of 'let expr', prefer (( expr )) .


In openwrt/package/system/procd/files/procd.sh line 163:
	let '_procd_data_open = _procd_data_open + 1'
        ^-- SC2219: Instead of 'let expr', prefer (( expr )) .


In openwrt/package/system/procd/files/procd.sh line 169:
	let '_procd_data_open = _procd_data_open - 1'
        ^-- SC2219: Instead of 'let expr', prefer (( expr )) .


In openwrt/package/system/procd/files/procd.sh line 190:
	for a in $@; do
                 ^-- SC2068: Double quote array expansions to avoid re-splitting elements.


In openwrt/package/system/procd/files/procd.sh line 213:
	[ $? = 0 ] || return
          ^-- SC2181: Check exit code directly with e.g. 'if mycmd;', not indirectly with $?.


In openwrt/package/system/procd/files/procd.sh line 215:
	[ $? = 0 ] || {
          ^-- SC2181: Check exit code directly with e.g. 'if mycmd;', not indirectly with $?.


In openwrt/package/system/procd/files/procd.sh line 219:
	for a in $@; do
                 ^-- SC2068: Double quote array expansions to avoid re-splitting elements.


In openwrt/package/system/procd/files/procd.sh line 230:
	[ $? = 0 ] || return
          ^-- SC2181: Check exit code directly with e.g. 'if mycmd;', not indirectly with $?.


In openwrt/package/system/procd/files/procd.sh line 232:
	[ $? = 0 ] || {
          ^-- SC2181: Check exit code directly with e.g. 'if mycmd;', not indirectly with $?.


In openwrt/package/system/procd/files/procd.sh line 236:
	for a in $@; do
                 ^-- SC2068: Double quote array expansions to avoid re-splitting elements.


In openwrt/package/system/procd/files/procd.sh line 262:
			json_add_int "$type" $(kill -l "$1")
                                             ^-------------^ SC2046: Quote this to prevent word splitting.


In openwrt/package/system/procd/files/procd.sh line 303:
	local name=$(basename ${script:-$initscript})
                              ^--------------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local name=$(basename "${script:-$initscript}")


In openwrt/package/system/procd/files/procd.sh line 306:
	_procd_add_interface_trigger "interface.*" $1 /etc/init.d/$name reload
                                                   ^-- SC2086: Double quote to prevent globbing and word splitting.
                                                                  ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	_procd_add_interface_trigger "interface.*" "$1" /etc/init.d/"$name" reload


In openwrt/package/system/procd/files/procd.sh line 358:
	_procd_add_array_data "run_script" /etc/init.d/$name $action
                                                       ^---^ SC2086: Double quote to prevent globbing and word splitting.
                                                             ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	_procd_add_array_data "run_script" /etc/init.d/"$name" "$action"


In openwrt/package/system/procd/files/procd.sh line 368:
	local name=$(basename ${script:-$initscript})
                              ^--------------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local name=$(basename "${script:-$initscript}")


In openwrt/package/system/procd/files/procd.sh line 374:
	_procd_add_mount_trigger mount.add $action "$@"
                                           ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	_procd_add_mount_trigger mount.add "$action" "$@"


In openwrt/package/system/procd/files/procd.sh line 399:
		_procd_add_action_mount_trigger restart $mountpoints
                                                        ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		_procd_add_action_mount_trigger restart "$mountpoints"


In openwrt/package/system/procd/files/procd.sh line 405:
		_procd_add_action_mount_trigger reload $mountpoints
                                                       ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		_procd_add_action_mount_trigger reload "$mountpoints"


In openwrt/package/system/procd/files/procd.sh line 428:
	local name=$(basename ${script:-$initscript})
                              ^--------------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local name=$(basename "${script:-$initscript}")


In openwrt/package/system/procd/files/procd.sh line 433:
		_procd_add_config_trigger "config.change" "$file" /etc/init.d/$name reload
                                                                              ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		_procd_add_config_trigger "config.change" "$file" /etc/init.d/"$name" reload


In openwrt/package/system/procd/files/procd.sh line 440:
	$@
        ^-- SC2068: Double quote array expansions to avoid re-splitting elements.


In openwrt/package/system/procd/files/procd.sh line 449:
	[ $? = 0 ] || {
          ^-- SC2181: Check exit code directly with e.g. 'if mycmd;', not indirectly with $?.


In openwrt/package/system/procd/files/procd.sh line 476:
			_procd_add_array_data ${respawn_threshold:-3600} ${respawn_timeout:-5} ${respawn_retry:-5}
                                              ^------------------------^ SC2086: Double quote to prevent globbing and word splitting.
                                                                         ^-------------------^ SC2086: Double quote to prevent globbing and word splitting.
                                                                                               ^-----------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			_procd_add_array_data "${respawn_threshold:-3600}" "${respawn_timeout:-5}" "${respawn_retry:-5}"


In openwrt/package/system/procd/files/procd.sh line 485:
	_procd_open_instance
        ^------------------^ SC2119: Use _procd_open_instance "$@" if function's $1 should mean script's $1.


In openwrt/package/system/procd/files/procd.sh line 523:
	[ -n "$instance" -a "$instance" != "*" ] && json_add_string instance "$instance"
                         ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/system/procd/files/procd.sh line 553:
procd_open_data() {
^-- SC2120: procd_open_data references arguments, but none are ever passed.


In openwrt/package/system/procd/files/procd.sh line 561:
	json_set_namespace $__procd_old_cb
                           ^-------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	json_set_namespace "$__procd_old_cb"


In openwrt/package/system/procd/files/procd.sh line 593:
	procd_open_data
        ^-------------^ SC2119: Use procd_open_data "$@" if function's $1 should mean script's $1.


In openwrt/package/system/procd/files/procd.sh line 611:
	[ "$_error" = "0" ] || $(/sbin/validate_data "$_package" "$_type" "$_name" "$@" 1> /dev/null)
                               ^-- SC2091: Remove surrounding $() to avoid executing output.

For more information:
  https://www.shellcheck.net/wiki/SC2068 -- Double quote array expansions to ...
  https://www.shellcheck.net/wiki/SC2046 -- Quote this to prevent word splitt...
  https://www.shellcheck.net/wiki/SC2091 -- Remove surrounding $() to avoid e...
