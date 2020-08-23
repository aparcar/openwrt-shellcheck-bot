
In openwrt/scripts/mkits-qsdk-ipq-image.sh line 18:
	echo "Usage: `basename $0` output img0_name img0_file [[img1_name img1_file] ...]"
                     ^-----------^ SC2006: Use $(...) notation instead of legacy backticked `...`.
                               ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	echo "Usage: $(basename "$0") output img0_name img0_file [[img1_name img1_file] ...]"


In openwrt/scripts/mkits-qsdk-ipq-image.sh line 36:
	images {" > ${OUTPUT}
                    ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	images {" > "${OUTPUT}"


In openwrt/scripts/mkits-qsdk-ipq-image.sh line 38:
while [ -n "$1" -a -n "$2" ]; do
                ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/scripts/mkits-qsdk-ipq-image.sh line 54:
		};" >> ${OUTPUT}
                       ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		};" >> "${OUTPUT}"


In openwrt/scripts/mkits-qsdk-ipq-image.sh line 59:
};" >> ${OUTPUT}
       ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
};" >> "${OUTPUT}"

For more information:
  https://www.shellcheck.net/wiki/SC2166 -- Prefer [ p ] && [ q ] as [ p -a q...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
  https://www.shellcheck.net/wiki/SC2006 -- Use $(...) notation instead of le...
