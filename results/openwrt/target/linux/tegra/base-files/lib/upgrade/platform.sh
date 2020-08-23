
In openwrt/target/linux/tegra/base-files/lib/upgrade/platform.sh line 21:
	export_bootdevice && export_partdevice diskdev 0 || {
                          ^-- SC2015: Note that A && B || C is not if-then-else. C may run when A is true.


In openwrt/target/linux/tegra/base-files/lib/upgrade/platform.sh line 58:
	export_bootdevice && export_partdevice diskdev 0 || {
                          ^-- SC2015: Note that A && B || C is not if-then-else. C may run when A is true.


In openwrt/target/linux/tegra/base-files/lib/upgrade/platform.sh line 93:
	while read part start size; do
              ^--^ SC2162: read without -r will mangle backslashes.


In openwrt/target/linux/tegra/base-files/lib/upgrade/platform.sh line 94:
		if export_partdevice partdev $part; then
                                             ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		if export_partdevice partdev "$part"; then

For more information:
  https://www.shellcheck.net/wiki/SC2015 -- Note that A && B || C is not if-t...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
  https://www.shellcheck.net/wiki/SC2162 -- read without -r will mangle backs...
