
In openwrt/scripts/patch-kernel.sh line 40:
    ${uncomp} ${i} | ${PATCH:-patch} -f -p1 -d ${targetdir}
              ^--^ SC2086: Double quote to prevent globbing and word splitting.
                                               ^----------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
    ${uncomp} "${i}" | ${PATCH:-patch} -f -p1 -d "${targetdir}"


In openwrt/scripts/patch-kernel.sh line 41:
    if [ $? != 0 ] ; then
         ^-- SC2181: Check exit code directly with e.g. 'if mycmd;', not indirectly with $?.


In openwrt/scripts/patch-kernel.sh line 48:
if [ "`find $targetdir/ '(' -name '*.rej' -o -name '.*.rej' ')' -print`" ] ; then
      ^-- SC2006: Use $(...) notation instead of legacy backticked `...`.
            ^--------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
if [ "$(find "$targetdir"/ '(' -name '*.rej' -o -name '.*.rej' ')' -print)" ] ; then


In openwrt/scripts/patch-kernel.sh line 54:
find $targetdir/ '(' -name '*.orig' -o -name '.*.orig' ')' -exec rm -f {} \;
     ^--------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
find "$targetdir"/ '(' -name '*.orig' -o -name '.*.orig' ')' -exec rm -f {} \;

For more information:
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
  https://www.shellcheck.net/wiki/SC2006 -- Use $(...) notation instead of le...
  https://www.shellcheck.net/wiki/SC2181 -- Check exit code directly with e.g...
