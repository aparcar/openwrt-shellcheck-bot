
In openwrt/package/base-files/files/lib/upgrade/fwtool.sh line 14:
		[ "$REQUIRE_IMAGE_SIGNATURE" = 1 -a "$FORCE" != 1 ] && {
                                                 ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/package/base-files/files/lib/upgrade/fwtool.sh line 34:
		[ "$REQUIRE_IMAGE_METADATA" = 1 -a "$FORCE" != 1 ] && {
                                                ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.

For more information:
  https://www.shellcheck.net/wiki/SC2166 -- Prefer [ p ] && [ q ] as [ p -a q...
