
In openwrt/scripts/getver.sh line 4:
[ -n "$TOPDIR" ] && cd $TOPDIR
                    ^--------^ SC2164: Use 'cd ... || exit' or 'cd ... || return' in case cd fails.
                       ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
[ -n "$TOPDIR" ] && cd "$TOPDIR" || exit


In openwrt/scripts/getver.sh line 28:
		ORIGIN="$(git rev-parse --verify --symbolic-full-name ${BRANCH}@{u} 2>/dev/null)"
                                                                      ^-------^ SC2086: Double quote to prevent globbing and word splitting.
                                                                                ^-- SC1083: This { is literal. Check expression (missing ;/\n?) or quote it.
                                                                                  ^-- SC1083: This } is literal. Check expression (missing ;/\n?) or quote it.

Did you mean: 
		ORIGIN="$(git rev-parse --verify --symbolic-full-name "${BRANCH}"@{u} 2>/dev/null)"


In openwrt/scripts/getver.sh line 29:
		[ -n "$ORIGIN" ] || ORIGIN="$(git rev-parse --verify --symbolic-full-name master@{u} 2>/dev/null)"
                                                                                                 ^-- SC1083: This { is literal. Check expression (missing ;/\n?) or quote it.
                                                                                                   ^-- SC1083: This } is literal. Check expression (missing ;/\n?) or quote it.


In openwrt/scripts/getver.sh line 30:
		REV="$(git rev-list ${REBOOT}..$GET_REV 2>/dev/null | wc -l | awk '{print $1}')"
                                               ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		REV="$(git rev-list ${REBOOT}.."$GET_REV" 2>/dev/null | wc -l | awk '{print $1}')"


In openwrt/scripts/getver.sh line 33:
			UPSTREAM_BASE="$(git merge-base $GET_REV $ORIGIN)"
                                                        ^------^ SC2086: Double quote to prevent globbing and word splitting.
                                                                 ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			UPSTREAM_BASE="$(git merge-base "$GET_REV" "$ORIGIN")"


In openwrt/scripts/getver.sh line 34:
			UPSTREAM_REV="$(git rev-list ${REBOOT}..$UPSTREAM_BASE 2>/dev/null | wc -l | awk '{print $1}')"
                                                                ^------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
			UPSTREAM_REV="$(git rev-list ${REBOOT}.."$UPSTREAM_BASE" 2>/dev/null | wc -l | awk '{print $1}')"


In openwrt/scripts/getver.sh line 43:
		REV="${REV:+r$REV-$(git log -n 1 --format="%h" $UPSTREAM_BASE)}"
                                                               ^------------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
		REV="${REV:+r$REV-$(git log -n 1 --format="%h" "$UPSTREAM_BASE")}"

For more information:
  https://www.shellcheck.net/wiki/SC1083 -- This { is literal. Check expressi...
  https://www.shellcheck.net/wiki/SC2164 -- Use 'cd ... || exit' or 'cd ... |...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
