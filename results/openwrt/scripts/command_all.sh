
In openwrt/scripts/command_all.sh line 9:
for ELEMENT in $(echo $PATH | tr ":" "\n"); do
                      ^---^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
for ELEMENT in $(echo "$PATH" | tr ":" "\n"); do

For more information:
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
