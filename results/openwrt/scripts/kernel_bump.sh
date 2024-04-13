
In openwrt/scripts/kernel_bump.sh line 87:
	if [ -n "$(git status --porcelain | grep -v '^?? .*')" ]; then
             ^-- SC2143: Use grep -q instead of comparing output with [ -n .. ].


In openwrt/scripts/kernel_bump.sh line 164:
		--message 'When doing `git bisect`, consider `git bisect --skip`.'
                          ^-- SC2016: Expressions don't expand in single quotes, use double quotes for that.


In openwrt/scripts/kernel_bump.sh line 178:
	echo 'Kernel bump complete. Remember to use `git log --follow`.'
             ^-- SC2016: Expressions don't expand in single quotes, use double quotes for that.

For more information:
  https://www.shellcheck.net/wiki/SC2016 -- Expressions don't expand in singl...
  https://www.shellcheck.net/wiki/SC2143 -- Use grep -q instead of comparing ...
