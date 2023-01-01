
In openwrt/target/linux/ipq40xx/base-files/lib/upgrade/linksys.sh line 55:
	tail -c 256 $1 | grep -q -i "\.LINKSYS\.........${board}"
                    ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	tail -c 256 "$1" | grep -q -i "\.LINKSYS\.........${board}"

For more information:
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
