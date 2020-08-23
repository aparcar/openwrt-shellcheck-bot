
In openwrt/scripts/sign_images.sh line 12:
for image in $(find $TOP_DIR -type f -name "*-sysupgrade.bin"); do
             ^-- SC2044: For loops over find output are fragile. Use find -exec or a while read loop.
                    ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
for image in $(find "$TOP_DIR" -type f -name "*-sysupgrade.bin"); do


In openwrt/scripts/sign_images.sh line 17:
			while [ "$?" = 0 ]; do
                                ^--^ SC2181: Check exit code directly with e.g. 'if mycmd;', not indirectly with $?.

For more information:
  https://www.shellcheck.net/wiki/SC2044 -- For loops over find output are fr...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
  https://www.shellcheck.net/wiki/SC2181 -- Check exit code directly with e.g...
