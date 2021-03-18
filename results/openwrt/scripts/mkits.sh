
In openwrt/scripts/mkits.sh line 88:
	DTADDR=$(printf "0x%08x" $(($LOAD_ADDR - $dtbsize)) )
                                    ^--------^ SC2004: $/${} is unnecessary on arithmetic variables.
                                                 ^------^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/scripts/mkits.sh line 164:
	DTADDR=$(printf "0x%08x" $(($DTADDR - $ovsize)))
                                    ^-----^ SC2004: $/${} is unnecessary on arithmetic variables.
                                              ^-----^ SC2004: $/${} is unnecessary on arithmetic variables.

For more information:
  https://www.shellcheck.net/wiki/SC2004 -- $/${} is unnecessary on arithmeti...
