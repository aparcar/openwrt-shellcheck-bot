
In openwrt/target/linux/imx/cortexa53/base-files/lib/upgrade/platform.sh line 29:
		export_bootdevice && export_partdevice diskdev 0 || {
                                  ^-- SC2015: Note that A && B || C is not if-then-else. C may run when A is true.

For more information:
  https://www.shellcheck.net/wiki/SC2015 -- Note that A && B || C is not if-t...
