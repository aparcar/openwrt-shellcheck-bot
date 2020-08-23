
In openwrt/package/base-files/files/bin/ipcalc.sh line 3:
awk -f - $* <<EOF
         ^-- SC2048: Use "$@" (with quotes) to prevent whitespace problems.
         ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
awk -f - "$*" <<EOF

For more information:
  https://www.shellcheck.net/wiki/SC2048 -- Use "$@" (with quotes) to prevent...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
