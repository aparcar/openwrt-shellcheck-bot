
In openwrt/target/linux/mediatek/filogic/base-files/lib/upgrade/platform.sh line 5:
	local file_type=$(identify $1)
                                   ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	local file_type=$(identify "$1")

For more information:
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
