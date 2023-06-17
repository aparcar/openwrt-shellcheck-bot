
In openwrt/target/linux/qualcommax/ipq807x/base-files/lib/upgrade/buffalo.sh line 19:
	ubirmvol /dev/$ubi_rootdev -N ubi_rootfs &> /dev/null || true
                      ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	ubirmvol /dev/"$ubi_rootdev" -N ubi_rootfs &> /dev/null || true


In openwrt/target/linux/qualcommax/ipq807x/base-files/lib/upgrade/buffalo.sh line 20:
	ubirmvol /dev/$ubi_rootdev -N fw_hash &> /dev/null || true
                      ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	ubirmvol /dev/"$ubi_rootdev" -N fw_hash &> /dev/null || true


In openwrt/target/linux/qualcommax/ipq807x/base-files/lib/upgrade/buffalo.sh line 22:
	ubirmvol /dev/$ubi_propdev -N user_property_ubi &> /dev/null || true
                      ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	ubirmvol /dev/"$ubi_propdev" -N user_property_ubi &> /dev/null || true


In openwrt/target/linux/qualcommax/ipq807x/base-files/lib/upgrade/buffalo.sh line 23:
	ubirmvol /dev/$ubi_propdev -N extra_property &> /dev/null || true
                      ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	ubirmvol /dev/"$ubi_propdev" -N extra_property &> /dev/null || true


In openwrt/target/linux/qualcommax/ipq807x/base-files/lib/upgrade/buffalo.sh line 43:
	ubimkvol /dev/$ubi_rootdev -N ubi_rootfs -S 1
                      ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	ubimkvol /dev/"$ubi_rootdev" -N ubi_rootfs -S 1


In openwrt/target/linux/qualcommax/ipq807x/base-files/lib/upgrade/buffalo.sh line 44:
	ubimkvol /dev/$ubi_rootdev -N fw_hash -S 1 -t static
                      ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	ubimkvol /dev/"$ubi_rootdev" -N fw_hash -S 1 -t static


In openwrt/target/linux/qualcommax/ipq807x/base-files/lib/upgrade/buffalo.sh line 46:
	if ! hashvol_root="$(nand_find_volume $ubi_rootdev fw_hash)" || \
                                              ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	if ! hashvol_root="$(nand_find_volume "$ubi_rootdev" fw_hash)" || \


In openwrt/target/linux/qualcommax/ipq807x/base-files/lib/upgrade/buffalo.sh line 47:
	   ! hashvol_rcvr="$(nand_find_volume $ubi_rcvrdev fw_hash)"; then
                                              ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	   ! hashvol_rcvr="$(nand_find_volume "$ubi_rcvrdev" fw_hash)"; then


In openwrt/target/linux/qualcommax/ipq807x/base-files/lib/upgrade/buffalo.sh line 53:
	ubiupdatevol /dev/$hashvol_root /tmp/dummyhash.txt
                          ^-----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	ubiupdatevol /dev/"$hashvol_root" /tmp/dummyhash.txt


In openwrt/target/linux/qualcommax/ipq807x/base-files/lib/upgrade/buffalo.sh line 54:
	ubiupdatevol /dev/$hashvol_rcvr /tmp/dummyhash.txt
                          ^-----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	ubiupdatevol /dev/"$hashvol_rcvr" /tmp/dummyhash.txt

For more information:
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
