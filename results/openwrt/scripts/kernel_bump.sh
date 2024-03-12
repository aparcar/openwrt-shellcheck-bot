
In openwrt/scripts/kernel_bump.sh line 137:
		--message 'During a `git bisect` session, `git bisect --skip` is recommended.'
                          ^-- SC2016: Expressions don't expand in single quotes, use double quotes for that.


In openwrt/scripts/kernel_bump.sh line 149:
	echo 'Kernel bump complete. Remember to use `git log --follow`.'
             ^-- SC2016: Expressions don't expand in single quotes, use double quotes for that.

For more information:
  https://www.shellcheck.net/wiki/SC2016 -- Expressions don't expand in singl...
