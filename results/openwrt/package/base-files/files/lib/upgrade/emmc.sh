
In openwrt/package/base-files/files/lib/upgrade/emmc.sh line 8:
	[ "$CI_KERNPART" -a -z "$EMMC_KERN_DEV" ] && export EMMC_KERN_DEV="$(find_mmc_part $CI_KERNPART $CI_ROOTDEV)"
                         ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.
                                                                                           ^----------^ SC2086: Double quote to prevent globbing and word splitting.
                                                                                                        ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	[ "$CI_KERNPART" -a -z "$EMMC_KERN_DEV" ] && export EMMC_KERN_DEV="$(find_mmc_part "$CI_KERNPART" "$CI_ROOTDEV")"


In openwrt/package/base-files/files/lib/upgrade/emmc.sh line 9:
	[ "$CI_ROOTPART" -a -z "$EMMC_ROOT_DEV" ] && export EMMC_ROOT_DEV="$(find_mmc_part $CI_ROOTPART $CI_ROOTDEV)"
                         ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.
                                                                                           ^----------^ SC2086: Double quote to prevent globbing and word splitting.
                                                                                                        ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	[ "$CI_ROOTPART" -a -z "$EMMC_ROOT_DEV" ] && export EMMC_ROOT_DEV="$(find_mmc_part "$CI_ROOTPART" "$CI_ROOTDEV")"


In openwrt/package/base-files/files/lib/upgrade/emmc.sh line 10:
	[ "$CI_DATAPART" -a -z "$EMMC_DATA_DEV" ] && export EMMC_DATA_DEV="$(find_mmc_part $CI_DATAPART $CI_ROOTDEV)"
                         ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.
                                                                                           ^----------^ SC2086: Double quote to prevent globbing and word splitting.
                                                                                                        ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	[ "$CI_DATAPART" -a -z "$EMMC_DATA_DEV" ] && export EMMC_DATA_DEV="$(find_mmc_part "$CI_DATAPART" "$CI_ROOTDEV")"


In openwrt/package/base-files/files/lib/upgrade/emmc.sh line 16:
	tar tf "$tar_file" ${board_dir}/kernel 1>/dev/null 2>/dev/null && has_kernel=1
                           ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	tar tf "$tar_file" "${board_dir}"/kernel 1>/dev/null 2>/dev/null && has_kernel=1


In openwrt/package/base-files/files/lib/upgrade/emmc.sh line 17:
	tar tf "$tar_file" ${board_dir}/root 1>/dev/null 2>/dev/null && has_rootfs=1
                           ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	tar tf "$tar_file" "${board_dir}"/root 1>/dev/null 2>/dev/null && has_rootfs=1


In openwrt/package/base-files/files/lib/upgrade/emmc.sh line 19:
	[ "$has_rootfs" = 1 -a "$EMMC_ROOT_DEV" ] && {
                            ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/base-files/files/lib/upgrade/emmc.sh line 21:
		[ "$has_kernel" = 1 -a "$EMMC_KERN_DEV" ] && {
                                    ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/base-files/files/lib/upgrade/emmc.sh line 26:
		export EMMC_ROOTFS_BLOCKS=$(($(tar xf "$tar_file" ${board_dir}/root -O | dd of="$EMMC_ROOT_DEV" bs=512 2>&1 | grep "records out" | cut -d' ' -f1)))
                                                                  ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		export EMMC_ROOTFS_BLOCKS=$(($(tar xf "$tar_file" "${board_dir}"/root -O | dd of="$EMMC_ROOT_DEV" bs=512 2>&1 | grep "records out" | cut -d' ' -f1)))


In openwrt/package/base-files/files/lib/upgrade/emmc.sh line 32:
	[ "$has_kernel" = 1 -a "$EMMC_KERN_DEV" ] &&
                            ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/base-files/files/lib/upgrade/emmc.sh line 33:
		export EMMC_KERNEL_BLOCKS=$(($(tar xf "$tar_file" ${board_dir}/kernel -O | dd of="$EMMC_KERN_DEV" bs=512 2>&1 | grep "records out" | cut -d' ' -f1)))
                                                                  ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		export EMMC_KERNEL_BLOCKS=$(($(tar xf "$tar_file" "${board_dir}"/kernel -O | dd of="$EMMC_KERN_DEV" bs=512 2>&1 | grep "records out" | cut -d' ' -f1)))


In openwrt/package/base-files/files/lib/upgrade/emmc.sh line 48:
	[ "$CI_KERNPART" -a -z "$EMMC_KERN_DEV" ] && export EMMC_KERN_DEV="$(find_mmc_part $CI_KERNPART $CI_ROOTDEV)"
                         ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.
                                                                                           ^----------^ SC2086: Double quote to prevent globbing and word splitting.
                                                                                                        ^---------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	[ "$CI_KERNPART" -a -z "$EMMC_KERN_DEV" ] && export EMMC_KERN_DEV="$(find_mmc_part "$CI_KERNPART" "$CI_ROOTDEV")"


In openwrt/package/base-files/files/lib/upgrade/emmc.sh line 71:
		"fit")  emmc_upgrade_fit $1;;
                                         ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		"fit")  emmc_upgrade_fit "$1";;


In openwrt/package/base-files/files/lib/upgrade/emmc.sh line 72:
		*)      emmc_upgrade_tar $1;;
                                         ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		*)      emmc_upgrade_tar "$1";;

For more information:
  https://www.shellcheck.net/wiki/SC2166 -- Prefer [ p ] && [ q ] as [ p -a q...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
