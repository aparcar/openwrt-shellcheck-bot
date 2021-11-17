
In openwrt/scripts/check-toolchain-clean.sh line 2:
eval `grep CONFIG_GCC_VERSION .config`
     ^-- SC2046: Quote this to prevent word splitting.
     ^-- SC2006: Use $(...) notation instead of legacy backticked `...`.

Did you mean: 
eval $(grep CONFIG_GCC_VERSION .config)

For more information:
  https://www.shellcheck.net/wiki/SC2046 -- Quote this to prevent word splitt...
  https://www.shellcheck.net/wiki/SC2006 -- Use $(...) notation instead of le...
