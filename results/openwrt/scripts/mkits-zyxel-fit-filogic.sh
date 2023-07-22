
In openwrt/scripts/mkits-zyxel-fit-filogic.sh line 7:
	echo "Usage: `basename $0` output file compat-models"
                     ^-----------^ SC2006: Use $(...) notation instead of legacy backticked `...`.
                               ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	echo "Usage: $(basename "$0") output file compat-models"


In openwrt/scripts/mkits-zyxel-fit-filogic.sh line 40:
};" > ${OUTPUT}
      ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
};" > "${OUTPUT}"

For more information:
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
  https://www.shellcheck.net/wiki/SC2006 -- Use $(...) notation instead of le...
