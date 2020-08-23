
In openwrt/scripts/diffconfig.sh line 2:
grep \^CONFIG_TARGET_ .config | head -n3 > tmp/.diffconfig.head
     ^-- SC1001: This \^ will be a regular '^' in this context.


In openwrt/scripts/diffconfig.sh line 3:
grep \^CONFIG_TARGET_DEVICE_ .config >> tmp/.diffconfig.head
^-- SC2129: Consider using { cmd1; cmd2; } >> file instead of individual redirects.
     ^-- SC1001: This \^ will be a regular '^' in this context.

For more information:
  https://www.shellcheck.net/wiki/SC1001 -- This \^ will be a regular '^' in ...
  https://www.shellcheck.net/wiki/SC2129 -- Consider using { cmd1; cmd2; } >>...
