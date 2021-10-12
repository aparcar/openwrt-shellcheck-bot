
In openwrt/scripts/rstrip.sh line 23:
find $TARGETS -type f -a -exec file {} \; | \
     ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
find "$TARGETS" -type f -a -exec file {} \; | \


In openwrt/scripts/rstrip.sh line 27:
  while read F S; do
        ^--^ SC2162: read without -r will mangle backslashes.


In openwrt/scripts/rstrip.sh line 29:
	[ "${S}" = "relocatable" ] && {
                                   ^-- SC2015: Note that A && B || C is not if-then-else. C may run when A is true.


In openwrt/scripts/rstrip.sh line 33:
		b=$(stat -c '%a' $F)
                                 ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		b=$(stat -c '%a' "$F")


In openwrt/scripts/rstrip.sh line 35:
			old_rpath="$($PATCHELF --print-rpath $F)"; new_rpath=""
                                                             ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			old_rpath="$($PATCHELF --print-rpath "$F")"; new_rpath=""


In openwrt/scripts/rstrip.sh line 42:
			[ "$new_rpath" = "$old_rpath" ] || $PATCHELF --set-rpath "$new_rpath" $F
                                                                                              ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			[ "$new_rpath" = "$old_rpath" ] || $PATCHELF --set-rpath "$new_rpath" "$F"


In openwrt/scripts/rstrip.sh line 45:
		a=$(stat -c '%a' $F)
                                 ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		a=$(stat -c '%a' "$F")


In openwrt/scripts/rstrip.sh line 46:
		[ "$a" = "$b" ] || chmod $b $F
                                         ^-- SC2086: Double quote to prevent globbing and word splitting.
                                            ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		[ "$a" = "$b" ] || chmod "$b" "$F"

For more information:
  https://www.shellcheck.net/wiki/SC2015 -- Note that A && B || C is not if-t...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
  https://www.shellcheck.net/wiki/SC2162 -- read without -r will mangle backs...
