
In openwrt/target/linux/lantiq/base-files/lib/functions/lantiq.sh line 8:
	ls /lib/modules/$(uname -r)/ltq_atm* 1> /dev/null 2>&1 && \
                        ^---------^ SC2046: Quote this to prevent word splitting.

For more information:
  https://www.shellcheck.net/wiki/SC2046 -- Quote this to prevent word splitt...
