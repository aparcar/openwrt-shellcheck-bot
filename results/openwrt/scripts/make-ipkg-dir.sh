
In openwrt/scripts/make-ipkg-dir.sh line 12:
grep '^Maintainer' "$CONTROL" 2>&1 >/dev/null || \
                              ^--^ SC2069: To redirect stdout+stderr, 2>&1 must be last (or use '{ cmd > file; } 2>&1' to clarify).


In openwrt/scripts/make-ipkg-dir.sh line 14:
grep '^Source' "$CONTROL" 2>&1 >/dev/null || {
                          ^--^ SC2069: To redirect stdout+stderr, 2>&1 must be last (or use '{ cmd > file; } 2>&1' to clarify).

For more information:
  https://www.shellcheck.net/wiki/SC2069 -- To redirect stdout+stderr, 2>&1 m...
