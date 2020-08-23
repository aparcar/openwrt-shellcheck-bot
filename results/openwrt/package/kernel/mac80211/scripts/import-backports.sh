
In openwrt/package/kernel/mac80211/scripts/import-backports.sh line 19:
	/^(---|\*\*\*|Index:)[ \t][^ \t]|^diff -/ \
                                                  ^-- SC1004: This backslash+linefeed is literal. Break outside single quotes if you just want to break the line.


In openwrt/package/kernel/mac80211/scripts/import-backports.sh line 28:
	/#? .* \| / \
                    ^-- SC1004: This backslash+linefeed is literal. Break outside single quotes if you just want to break the line.


In openwrt/package/kernel/mac80211/scripts/import-backports.sh line 31:
	/^#? .* files? changed(, .* insertions?\(\+\))?(, .* deletions?\(-\))?/ \
                                                                                ^-- SC1004: This backslash+linefeed is literal. Break outside single quotes if you just want to break the line.


In openwrt/package/kernel/mac80211/scripts/import-backports.sh line 62:
	quilt series | while read CUR; do
                             ^--^ SC2162: read without -r will mangle backslashes.


In openwrt/package/kernel/mac80211/scripts/import-backports.sh line 67:
		[ "$CUR" -ge "$(($BASE + 100))" ] && continue
                                 ^---^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/kernel/mac80211/scripts/import-backports.sh line 68:
		NEW="$(($CUR + 1))"
                        ^--^ SC2004: $/${} is unnecessary on arithmetic variables.


In openwrt/package/kernel/mac80211/scripts/import-backports.sh line 78:
	NAME="$(basename $FILE)"
                         ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	NAME="$(basename "$FILE")"


In openwrt/package/kernel/mac80211/scripts/import-backports.sh line 106:
	CUR="$(($CUR + 1))"
                ^--^ SC2004: $/${} is unnecessary on arithmetic variables.

For more information:
  https://www.shellcheck.net/wiki/SC1004 -- This backslash+linefeed is litera...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
  https://www.shellcheck.net/wiki/SC2162 -- read without -r will mangle backs...
