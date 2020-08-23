
In openwrt/scripts/om-fwupgradecfg-gen.sh line 11:
	rm -f $CFG_OUT
              ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	rm -f "$CFG_OUT"


In openwrt/scripts/om-fwupgradecfg-gen.sh line 64:
KERNEL_MD5=$(mkhash md5 $KERNEL_PATH)
                        ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
KERNEL_MD5=$(mkhash md5 "$KERNEL_PATH")


In openwrt/scripts/om-fwupgradecfg-gen.sh line 65:
KERNEL_SHA256=$(mkhash sha256 $KERNEL_PATH)
                              ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
KERNEL_SHA256=$(mkhash sha256 "$KERNEL_PATH")


In openwrt/scripts/om-fwupgradecfg-gen.sh line 66:
KERNEL_PART_SIZE_KB=$(size=$(($KERNEL_SIZE / $FLASH_BS)); [ $(($size * $FLASH_BS)) -lt $KERNEL_SIZE ] && size=$(($size + 1)); echo $(($size * $FLASH_BS / 1024)))
                              ^----------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                             ^-------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                                               ^---^ SC2004: $/${} is unnecessary on arithmetic variables.
                                                                       ^-------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                                                                       ^----------^ SC2086: Double quote to prevent globbing and word splitting.
                                                                                                                 ^---^ SC2004: $/${} is unnecessary on arithmetic variables.
                                                                                                                                      ^---^ SC2004: $/${} is unnecessary on arithmetic variables.
                                                                                                                                              ^-------^ SC2004: $/${} is unnecessary on arithmetic variables.

Did you mean: 
KERNEL_PART_SIZE_KB=$(size=$(($KERNEL_SIZE / $FLASH_BS)); [ $(($size * $FLASH_BS)) -lt "$KERNEL_SIZE" ] && size=$(($size + 1)); echo $(($size * $FLASH_BS / 1024)))


In openwrt/scripts/om-fwupgradecfg-gen.sh line 67:
KERNEL_PART_SIZE=$(printf $SIZE_FORMAT $(($KERNEL_PART_SIZE_KB * $SIZE_FACTOR)))
                          ^----------^ SC2059: Don't use variables in the printf format string. Use printf "..%s.." "$foo".
                                          ^------------------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                                                 ^----------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/scripts/om-fwupgradecfg-gen.sh line 69:
ROOTFS_FLASH_ADDR=$(addr=$(($KERNEL_FLASH_ADDR + ($KERNEL_PART_SIZE_KB * 1024))); printf "0x%x" $addr)
                            ^----------------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                                  ^------------------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/scripts/om-fwupgradecfg-gen.sh line 71:
ROOTFS_CHECK_BLOCKS=$((($ROOTFS_SIZE / $CHECK_BS) - $MD5_SKIP_BLOCKS))
                        ^----------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                       ^-------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                                    ^--------------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/scripts/om-fwupgradecfg-gen.sh line 72:
ROOTFS_MD5=$(dd if=$ROOTFS_PATH bs=$CHECK_BS count=$ROOTFS_CHECK_BLOCKS 2>&- | mkhash md5)
                   ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
ROOTFS_MD5=$(dd if="$ROOTFS_PATH" bs=$CHECK_BS count=$ROOTFS_CHECK_BLOCKS 2>&- | mkhash md5)


In openwrt/scripts/om-fwupgradecfg-gen.sh line 73:
ROOTFS_MD5_FULL=$(mkhash md5 $ROOTFS_PATH)
                             ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
ROOTFS_MD5_FULL=$(mkhash md5 "$ROOTFS_PATH")


In openwrt/scripts/om-fwupgradecfg-gen.sh line 74:
ROOTFS_SHA256_FULL=$(mkhash sha256 $ROOTFS_PATH)
                                   ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
ROOTFS_SHA256_FULL=$(mkhash sha256 "$ROOTFS_PATH")


In openwrt/scripts/om-fwupgradecfg-gen.sh line 75:
ROOTFS_CHECK_SIZE=$(printf '0x%x' $(($ROOTFS_CHECK_BLOCKS * $CHECK_BS)))
                                     ^------------------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                                            ^-------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/scripts/om-fwupgradecfg-gen.sh line 76:
ROOTFS_PART_SIZE_KB=$(($MAX_PART_SIZE - $KERNEL_PART_SIZE_KB))
                       ^------------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                        ^------------------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/scripts/om-fwupgradecfg-gen.sh line 77:
ROOTFS_PART_SIZE=$(printf $SIZE_FORMAT $(($ROOTFS_PART_SIZE_KB * $SIZE_FACTOR)))
                          ^----------^ SC2059: Don't use variables in the printf format string. Use printf "..%s.." "$foo".
                                          ^------------------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                                                 ^----------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/scripts/om-fwupgradecfg-gen.sh line 79:
cat << EOF > $CFG_OUT
             ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
cat << EOF > "$CFG_OUT"

For more information:
  https://www.shellcheck.net/wiki/SC2059 -- Don't use variables in the printf...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
  https://www.shellcheck.net/wiki/SC2004 -- $/${} is unnecessary on arithmeti...
