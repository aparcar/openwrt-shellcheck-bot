
In openwrt/package/base-files/files/bin/ipcalc.sh line 3:
function bitcount(c) {
^-- SC1009: The mentioned syntax error was in this function.
                  ^-- SC1065: Trying to declare parameters? Don't. Use () and refer to params as $1, $2..
                     ^-- SC1073: Couldn't parse this brace group. Fix to allow more checks.


In openwrt/package/base-files/files/bin/ipcalc.sh line 4:
	c=and(rshift(c, 1),0x55555555)+and(c,0x55555555)
             ^-- SC1036: '(' is invalid here. Did you forget to escape it?
             ^-- SC1056: Expected a '}'. If you have one, try a ; or \n in front of it.
             ^-- SC1072: Missing '}'. Fix any mentioned problems and try again.

For more information:
  https://www.shellcheck.net/wiki/SC1056 -- Expected a '}'. If you have one, ...
  https://www.shellcheck.net/wiki/SC1065 -- Trying to declare parameters? Don...
  https://www.shellcheck.net/wiki/SC1036 -- '(' is invalid here. Did you forg...
