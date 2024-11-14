
In openwrt/scripts/download-check-artifact.sh line 38:
if which curl >/dev/null; then
   ^---^ SC2230: which is non-standard. Use builtin 'command -v' instead.


In openwrt/scripts/download-check-artifact.sh line 40:
elif which wget >/dev/null; then
     ^---^ SC2230: which is non-standard. Use builtin 'command -v' instead.


In openwrt/scripts/download-check-artifact.sh line 42:
elif which fetch >/dev/null; then
     ^---^ SC2230: which is non-standard. Use builtin 'command -v' instead.


In openwrt/scripts/download-check-artifact.sh line 50:
if which sha256sum >/dev/null; then
   ^---^ SC2230: which is non-standard. Use builtin 'command -v' instead.


In openwrt/scripts/download-check-artifact.sh line 52:
elif which shasum >/dev/null; then
     ^---^ SC2230: which is non-standard. Use builtin 'command -v' instead.


In openwrt/scripts/download-check-artifact.sh line 64:
if which gpg >/dev/null; then
   ^---^ SC2230: which is non-standard. Use builtin 'command -v' instead.

For more information:
  https://www.shellcheck.net/wiki/SC2230 -- which is non-standard. Use builti...
