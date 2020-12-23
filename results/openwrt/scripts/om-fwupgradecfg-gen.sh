
In openwrt/scripts/om-fwupgradecfg-gen.sh line 11:
	rm -f $CFG_OUT
              ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	rm -f "$CFG_OUT"


In openwrt/scripts/om-fwupgradecfg-gen.sh line 57:
KERNEL_MD5=$(mkhash md5 $KERNEL_PATH)
                        ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
KERNEL_MD5=$(mkhash md5 "$KERNEL_PATH")


In openwrt/scripts/om-fwupgradecfg-gen.sh line 58:
KERNEL_SHA256=$(mkhash sha256 $KERNEL_PATH)
                              ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
KERNEL_SHA256=$(mkhash sha256 "$KERNEL_PATH")


In openwrt/scripts/om-fwupgradecfg-gen.sh line 60:
KERNEL_PART_SIZE=$(printf $SIZE_FORMAT $(($KERNEL_PART_SIZE_KB * $SIZE_FACTOR)))
                          ^----------^ SC2059: Don't use variables in the printf format string. Use printf "..%s.." "$foo".
                                          ^------------------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                                                 ^----------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/scripts/om-fwupgradecfg-gen.sh line 62:
ROOTFS_FLASH_ADDR=$(addr=$(($KERNEL_FLASH_ADDR + ($KERNEL_PART_SIZE_KB * 1024))); printf "0x%x" $addr)
                            ^----------------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                                  ^------------------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/scripts/om-fwupgradecfg-gen.sh line 66:
ROOTFS_MD5=$(dd if=$ROOTFS_PATH bs=$CHECK_BS count=$ROOTFS_CHECK_BLOCKS 2>&- | mkhash md5)
                   ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
ROOTFS_MD5=$(dd if="$ROOTFS_PATH" bs=$CHECK_BS count=$ROOTFS_CHECK_BLOCKS 2>&- | mkhash md5)


In openwrt/scripts/om-fwupgradecfg-gen.sh line 67:
ROOTFS_MD5_FULL=$(mkhash md5 $ROOTFS_PATH)
                             ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
ROOTFS_MD5_FULL=$(mkhash md5 "$ROOTFS_PATH")


In openwrt/scripts/om-fwupgradecfg-gen.sh line 68:
ROOTFS_SHA256_FULL=$(mkhash sha256 $ROOTFS_PATH)
                                   ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
ROOTFS_SHA256_FULL=$(mkhash sha256 "$ROOTFS_PATH")


In openwrt/scripts/om-fwupgradecfg-gen.sh line 70:
ROOTFS_PART_SIZE_KB=$(($MAX_PART_SIZE - $KERNEL_PART_SIZE_KB))
                       ^------------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                        ^------------------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/scripts/om-fwupgradecfg-gen.sh line 71:
ROOTFS_PART_SIZE=$(printf $SIZE_FORMAT $(($ROOTFS_PART_SIZE_KB * $SIZE_FACTOR)))
                          ^----------^ SC2059: Don't use variables in the printf format string. Use printf "..%s.." "$foo".
                                          ^------------------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                                                 ^----------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/scripts/om-fwupgradecfg-gen.sh line 73:
cat << EOF > $CFG_OUT
             ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
cat << EOF > "$CFG_OUT"

For more information:
  https://www.shellcheck.net/wiki/SC2059 -- Don't use variables in the printf...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
  https://www.shellcheck.net/wiki/SC2004 -- $/${} is unnecessary on arithmeti...
