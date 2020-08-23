
In openwrt/package/network/utils/wwan/files/wwan.sh line 3:
. /lib/functions.sh
  ^---------------^ SC1091: Not following: /lib/functions.sh was not specified as input (see shellcheck -x).


In openwrt/package/network/utils/wwan/files/wwan.sh line 4:
. ../netifd-proto.sh
  ^----------------^ SC1091: Not following: ../netifd-proto.sh was not specified as input (see shellcheck -x).


In openwrt/package/network/utils/wwan/files/wwan.sh line 18:
[ -f ./mbim.sh ] && . ./mbim.sh
                      ^-------^ SC1091: Not following: ./mbim.sh was not specified as input (see shellcheck -x).


In openwrt/package/network/utils/wwan/files/wwan.sh line 19:
[ -f ./ncm.sh ] && . ./ncm.sh
                     ^------^ SC1091: Not following: ./ncm.sh was not specified as input (see shellcheck -x).


In openwrt/package/network/utils/wwan/files/wwan.sh line 20:
[ -f ./qmi.sh ] && . ./qmi.sh
                     ^------^ SC1091: Not following: ./qmi.sh was not specified as input (see shellcheck -x).


In openwrt/package/network/utils/wwan/files/wwan.sh line 21:
[ -f ./3g.sh ] && { . ./ppp.sh; . ./3g.sh; }
                      ^------^ SC1091: Not following: ./ppp.sh was not specified as input (see shellcheck -x).
                                  ^-----^ SC1091: Not following: ./3g.sh was not specified as input (see shellcheck -x).


In openwrt/package/network/utils/wwan/files/wwan.sh line 22:
[ -f ./directip.sh ] && . ./directip.sh
                          ^-----------^ SC1091: Not following: ./directip.sh was not specified as input (see shellcheck -x).


In openwrt/package/network/utils/wwan/files/wwan.sh line 47:
			vendor=$(cat /sys/bus/usb/devices/${bus}/idVendor)
                                                          ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			vendor=$(cat /sys/bus/usb/devices/"${bus}"/idVendor)


In openwrt/package/network/utils/wwan/files/wwan.sh line 48:
			product=$(cat /sys/bus/usb/devices/${bus}/idProduct)
                                                           ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			product=$(cat /sys/bus/usb/devices/"${bus}"/idProduct)


In openwrt/package/network/utils/wwan/files/wwan.sh line 49:
			[ -f /lib/network/wwan/$vendor:$product ] && {
                                               ^-----^ SC2086: Double quote to prevent globbing and word splitting.
                                                       ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			[ -f /lib/network/wwan/"$vendor":"$product" ] && {


In openwrt/package/network/utils/wwan/files/wwan.sh line 61:
		for a in $(ls /sys/bus/usb/devices); do
                         ^------------------------^ SC2045: Iterating over ls output is fragile. Use globs.


In openwrt/package/network/utils/wwan/files/wwan.sh line 63:
			[ -z "$usb" -a -f /sys/bus/usb/devices/$a/idVendor -a  -f /sys/bus/usb/devices/$a/idProduct ] || continue
                                    ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.
                                                               ^-- SC2086: Double quote to prevent globbing and word splitting.
                                                                           ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.
                                                                                                       ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			[ -z "$usb" -a -f /sys/bus/usb/devices/"$a"/idVendor -a  -f /sys/bus/usb/devices/"$a"/idProduct ] || continue


In openwrt/package/network/utils/wwan/files/wwan.sh line 64:
			vendor=$(cat /sys/bus/usb/devices/$a/idVendor)
                                                          ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			vendor=$(cat /sys/bus/usb/devices/"$a"/idVendor)


In openwrt/package/network/utils/wwan/files/wwan.sh line 65:
			product=$(cat /sys/bus/usb/devices/$a/idProduct)
                                                           ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			product=$(cat /sys/bus/usb/devices/"$a"/idProduct)


In openwrt/package/network/utils/wwan/files/wwan.sh line 66:
			[ -f /lib/network/wwan/$vendor:$product ] && {
                                               ^-----^ SC2086: Double quote to prevent globbing and word splitting.
                                                       ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			[ -f /lib/network/wwan/"$vendor":"$product" ] && {


In openwrt/package/network/utils/wwan/files/wwan.sh line 85:
		[ -n "$control" -a -n "$data" ] && {
                                ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/network/utils/wwan/files/wwan.sh line 86:
			ttys=$(ls -d /sys/bus/usb/devices/$devicename/${devicename}*/tty?* /sys/bus/usb/devices/$devicename/${devicename}*/tty/tty?* | sed "s/.*\///g" | tr "\n" " ")
                               ^-- SC2012: Use find instead of ls to better handle non-alphanumeric filenames.
                                                          ^---------^ SC2086: Double quote to prevent globbing and word splitting.
                                                                      ^-----------^ SC2086: Double quote to prevent globbing and word splitting.
                                                                                                                ^---------^ SC2086: Double quote to prevent globbing and word splitting.
                                                                                                                            ^-----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			ttys=$(ls -d /sys/bus/usb/devices/"$devicename"/"${devicename}"*/tty?* /sys/bus/usb/devices/"$devicename"/"${devicename}"*/tty/tty?* | sed "s/.*\///g" | tr "\n" " ")


In openwrt/package/network/utils/wwan/files/wwan.sh line 87:
			ctl_device=/dev/$(echo $ttys | cut -d" " -f $((control + 1)))
                                               ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			ctl_device=/dev/$(echo "$ttys" | cut -d" " -f $((control + 1)))


In openwrt/package/network/utils/wwan/files/wwan.sh line 88:
			dat_device=/dev/$(echo $ttys | cut -d" " -f $((data + 1)))
                                               ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			dat_device=/dev/$(echo "$ttys" | cut -d" " -f $((data + 1)))


In openwrt/package/network/utils/wwan/files/wwan.sh line 93:
	[ -z "$ctl_device" ] && for net in $(ls /sys/class/net/ | grep -e wwan -e usb); do
                                             ^-- SC2010: Don't use ls | grep. Use a glob or a for loop with a condition to allow non-alphanumeric filenames.


In openwrt/package/network/utils/wwan/files/wwan.sh line 96:
			[ $(readlink /sys/class/net/$net | grep $bus) ] || continue
                          ^-- SC2046: Quote this to prevent word splitting.
                          ^-- SC2143: Use grep -q instead of comparing output with [ -n .. ].
                                                    ^--^ SC2086: Double quote to prevent globbing and word splitting.
                                                                ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			[ $(readlink /sys/class/net/"$net" | grep "$bus") ] || continue


In openwrt/package/network/utils/wwan/files/wwan.sh line 98:
		driver=$(grep DRIVER /sys/class/net/$net/device/uevent | cut -d= -f2)
                                                    ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		driver=$(grep DRIVER /sys/class/net/"$net"/device/uevent | cut -d= -f2)


In openwrt/package/network/utils/wwan/files/wwan.sh line 101:
			ctl_device=/dev/$(ls /sys/class/net/$net/device/usbmisc)
                                                            ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			ctl_device=/dev/$(ls /sys/class/net/"$net"/device/usbmisc)


In openwrt/package/network/utils/wwan/files/wwan.sh line 104:
			ctl_device=/dev/$(cd /sys/class/net/$net/; find ../../../ -name ttyUSB* |xargs -n1 basename | head -n1)
                                          ^---------------------^ SC2164: Use 'cd ... || exit' or 'cd ... || return' in case cd fails.
                                                            ^--^ SC2086: Double quote to prevent globbing and word splitting.
                                                                   ^--------------------------^ SC2038: Use -print0/-0 or -exec + to allow for non-alphanumeric filenames.
                                                                                        ^-----^ SC2061: Quote the parameter to -name so the shell won't interpret it.

Did you mean: 
			ctl_device=/dev/$(cd /sys/class/net/"$net"/ || exit; find ../../../ -name ttyUSB* |xargs -n1 basename | head -n1)


In openwrt/package/network/utils/wwan/files/wwan.sh line 123:
	qmi_wwan)		proto_qmi_setup $@ ;;
                                                ^-- SC2068: Double quote array expansions to avoid re-splitting elements.


In openwrt/package/network/utils/wwan/files/wwan.sh line 124:
	cdc_mbim)		proto_mbim_setup $@ ;;
                                                 ^-- SC2068: Double quote array expansions to avoid re-splitting elements.


In openwrt/package/network/utils/wwan/files/wwan.sh line 125:
	sierra_net)		proto_directip_setup $@ ;;
                                                     ^-- SC2068: Double quote array expansions to avoid re-splitting elements.


In openwrt/package/network/utils/wwan/files/wwan.sh line 126:
	comgt)			proto_3g_setup $@ ;;
                                               ^-- SC2068: Double quote array expansions to avoid re-splitting elements.


In openwrt/package/network/utils/wwan/files/wwan.sh line 127:
	cdc_ether|*cdc_ncm)	proto_ncm_setup $@ ;;
                                                ^-- SC2068: Double quote array expansions to avoid re-splitting elements.


In openwrt/package/network/utils/wwan/files/wwan.sh line 138:
	qmi_wwan)		proto_qmi_teardown $@ ;;
                                                   ^-- SC2068: Double quote array expansions to avoid re-splitting elements.


In openwrt/package/network/utils/wwan/files/wwan.sh line 139:
	cdc_mbim)		proto_mbim_teardown $@ ;;
                                                    ^-- SC2068: Double quote array expansions to avoid re-splitting elements.


In openwrt/package/network/utils/wwan/files/wwan.sh line 140:
	sierra_net)		proto_directip_teardown $@ ;;
                                                        ^-- SC2068: Double quote array expansions to avoid re-splitting elements.


In openwrt/package/network/utils/wwan/files/wwan.sh line 141:
	comgt)			proto_3g_teardown $@ ;;
                                                  ^-- SC2068: Double quote array expansions to avoid re-splitting elements.


In openwrt/package/network/utils/wwan/files/wwan.sh line 142:
	cdc_ether|*cdc_ncm)	proto_ncm_teardown $@ ;;
                                                   ^-- SC2068: Double quote array expansions to avoid re-splitting elements.

For more information:
  https://www.shellcheck.net/wiki/SC2045 -- Iterating over ls output is fragi...
  https://www.shellcheck.net/wiki/SC2068 -- Double quote array expansions to ...
  https://www.shellcheck.net/wiki/SC2010 -- Don't use ls | grep. Use a glob o...
