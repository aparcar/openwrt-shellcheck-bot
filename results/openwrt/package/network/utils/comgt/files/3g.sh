
In openwrt/package/network/utils/comgt/files/3g.sh line 7:
	. ../netifd-proto.sh
          ^----------------^ SC1091: Not following: ../netifd-proto.sh was not specified as input (see shellcheck -x).


In openwrt/package/network/utils/comgt/files/3g.sh line 8:
	. ./ppp.sh
          ^------^ SC1091: Not following: ./ppp.sh was not specified as input (see shellcheck -x).


In openwrt/package/network/utils/comgt/files/3g.sh line 37:
	device="$(readlink -f $device)"
                              ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	device="$(readlink -f "$device")"

For more information:
  https://www.shellcheck.net/wiki/SC1091 -- Not following: ../netifd-proto.sh...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
