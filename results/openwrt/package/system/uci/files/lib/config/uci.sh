
In openwrt/package/system/uci/files/lib/config/uci.sh line 30:
			export ${NO_EXPORT:+-n} CONFIG_${VAR}=
                                                       ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			export ${NO_EXPORT:+-n} CONFIG_"${VAR}"=


In openwrt/package/system/uci/files/lib/config/uci.sh line 31:
			export ${NO_EXPORT:+-n} CONFIG_${VAR}_LENGTH=
                                                       ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			export ${NO_EXPORT:+-n} CONFIG_"${VAR}"_LENGTH=


In openwrt/package/system/uci/files/lib/config/uci.sh line 41:
	[ "$RET" != 0 -o -z "$DATA" ] || eval "$DATA"
                      ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/package/system/uci/files/lib/config/uci.sh line 154:
	/sbin/uci ${UCI_CONFIG_DIR:+-c $UCI_CONFIG_DIR} commit $PACKAGE
                                                               ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	/sbin/uci ${UCI_CONFIG_DIR:+-c $UCI_CONFIG_DIR} commit "$PACKAGE"

For more information:
  https://www.shellcheck.net/wiki/SC2166 -- Prefer [ p ] || [ q ] as [ p -o q...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
