
In openwrt/scripts/combined-image.sh line 5:
[ -f "$1" -a -f "$2" ] || {
          ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/scripts/combined-image.sh line 28:
	$(stat -c "%s" "$kern") $(stat -c "%s" "$root") "${md5%% *}" | \
        ^---------------------^ SC2046: Quote this to prevent word splitting.
                                ^---------------------^ SC2046: Quote this to prevent word splitting.


In openwrt/scripts/combined-image.sh line 31:
) > ${IMAGE} 2>/dev/null
    ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
) > "${IMAGE}" 2>/dev/null

For more information:
  https://www.shellcheck.net/wiki/SC2046 -- Quote this to prevent word splitt...
  https://www.shellcheck.net/wiki/SC2166 -- Prefer [ p ] && [ q ] as [ p -a q...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
