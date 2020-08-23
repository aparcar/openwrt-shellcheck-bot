
In openwrt/scripts/make-ipkg-dir.sh line 12:
grep '^Maintainer' "$CONTROL" 2>&1 >/dev/null || \
                              ^--^ SC2069: To redirect stdout+stderr, 2>&1 must be last (or use '{ cmd > file; } 2>&1' to clarify).


In openwrt/scripts/make-ipkg-dir.sh line 14:
grep '^Source' "$CONTROL" 2>&1 >/dev/null || {
                          ^--^ SC2069: To redirect stdout+stderr, 2>&1 must be last (or use '{ cmd > file; } 2>&1' to clarify).


In openwrt/scripts/make-ipkg-dir.sh line 15:
        pkgbase=$(echo "$WD" | sed -e "s|^$TOPDIR/||g")
                  ^-- SC2001: See if you can use ${variable//search/replace} instead.

For more information:
  https://www.shellcheck.net/wiki/SC2069 -- To redirect stdout+stderr, 2>&1 m...
  https://www.shellcheck.net/wiki/SC2001 -- See if you can use ${variable//se...
