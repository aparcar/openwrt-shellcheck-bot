
In openwrt/package/kernel/lantiq/ltq-vdsl-fw/src/vdsl_fw_install.sh line 16:
	read -n 1 R
        ^--^ SC2162: read without -r will mangle backslashes.


In openwrt/package/kernel/lantiq/ltq-vdsl-fw/src/vdsl_fw_install.sh line 25:
	[ $? -eq 0 -a -f "${FW}" ] || exit 1
          ^-- SC2181: Check exit code directly with e.g. 'if mycmd;', not indirectly with $?.
                   ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/kernel/lantiq/ltq-vdsl-fw/src/vdsl_fw_install.sh line 34:
cd /tmp
^-----^ SC2164: Use 'cd ... || exit' or 'cd ... || return' in case cd fails.

Did you mean: 
cd /tmp || exit


In openwrt/package/kernel/lantiq/ltq-vdsl-fw/src/vdsl_fw_install.sh line 38:
[ $? -eq 0 ] || exit 1
  ^-- SC2181: Check exit code directly with e.g. 'if mycmd;', not indirectly with $?.


In openwrt/package/kernel/lantiq/ltq-vdsl-fw/src/vdsl_fw_install.sh line 43:
[ "$T" = "${MD5_TAPI}" -a "$D" = "${MD5_DSL}" ] || {
                       ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.

For more information:
  https://www.shellcheck.net/wiki/SC2164 -- Use 'cd ... || exit' or 'cd ... |...
  https://www.shellcheck.net/wiki/SC2166 -- Prefer [ p ] && [ q ] as [ p -a q...
  https://www.shellcheck.net/wiki/SC2162 -- read without -r will mangle backs...
