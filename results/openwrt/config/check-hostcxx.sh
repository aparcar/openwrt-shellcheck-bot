
In openwrt/config/check-hostcxx.sh line 12:
[ $? -eq 0 ] && echo y || echo n
  ^-- SC2181: Check exit code directly with e.g. 'if mycmd;', not indirectly with $?.

For more information:
  https://www.shellcheck.net/wiki/SC2181 -- Check exit code directly with e.g...
