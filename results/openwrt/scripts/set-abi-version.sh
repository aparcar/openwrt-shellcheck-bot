
In openwrt/scripts/set-abi-version.sh line 19:
[ -n "$ABI_VER" -a -n "$PATCH_DIR" ] || {
                ^-- SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.


In openwrt/scripts/set-abi-version.sh line 31:
	while read F; do
              ^--^ SC2162: read without -r will mangle backslashes.


In openwrt/scripts/set-abi-version.sh line 43:
	while read F; do
              ^--^ SC2162: read without -r will mangle backslashes.


In openwrt/scripts/set-abi-version.sh line 49:
		cmd $PATCHELF --set-soname "$NEW_NAME" "$NEW_F"
                    ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		cmd "$PATCHELF" --set-soname "$NEW_NAME" "$NEW_F"


In openwrt/scripts/set-abi-version.sh line 61:
	while read F S; do
              ^--^ SC2162: read without -r will mangle backslashes.


In openwrt/scripts/set-abi-version.sh line 62:
		$PATCHELF --print-needed "$F" | while read L; do
                                                      ^--^ SC2162: read without -r will mangle backslashes.


In openwrt/scripts/set-abi-version.sh line 68:
				cmd $PATCHELF --replace-needed "$L" "$lib" "$F"
                                    ^-------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
				cmd "$PATCHELF" --replace-needed "$L" "$lib" "$F"

For more information:
  https://www.shellcheck.net/wiki/SC2166 -- Prefer [ p ] && [ q ] as [ p -a q...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
  https://www.shellcheck.net/wiki/SC2162 -- read without -r will mangle backs...
