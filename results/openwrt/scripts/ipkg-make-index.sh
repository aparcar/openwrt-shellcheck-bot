
In openwrt/scripts/ipkg-make-index.sh line 6:
if [ -z $pkg_dir ] || [ ! -d $pkg_dir ]; then
        ^------^ SC2086: Double quote to prevent globbing and word splitting.
                             ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
if [ -z "$pkg_dir" ] || [ ! -d "$pkg_dir" ]; then


In openwrt/scripts/ipkg-make-index.sh line 13:
for pkg in `find $pkg_dir -name '*.ipk' | sort`; do
           ^-- SC2006: Use $(...) notation instead of legacy backticked `...`.
                 ^------^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
for pkg in $(find "$pkg_dir" -name '*.ipk' | sort); do


In openwrt/scripts/ipkg-make-index.sh line 20:
	file_size=$(stat -L -c%s $pkg)
                                 ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	file_size=$(stat -L -c%s "$pkg")


In openwrt/scripts/ipkg-make-index.sh line 21:
	sha256sum=$(mkhash sha256 $pkg)
                                  ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	sha256sum=$(mkhash sha256 "$pkg")


In openwrt/scripts/ipkg-make-index.sh line 23:
	sed_safe_pkg=`echo $pkg | sed -e 's/^\.\///g' -e 's/\\//\\\\\\//g'`
                     ^-- SC2006: Use $(...) notation instead of legacy backticked `...`.
                           ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	sed_safe_pkg=$(echo "$pkg" | sed -e 's/^\.\///g' -e 's/\\//\\\\\\//g')


In openwrt/scripts/ipkg-make-index.sh line 24:
	tar -xzOf $pkg ./control.tar.gz | tar xzOf - ./control | sed -e "s/^Description:/Filename: $sed_safe_pkg\\
                  ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	tar -xzOf "$pkg" ./control.tar.gz | tar xzOf - ./control | sed -e "s/^Description:/Filename: $sed_safe_pkg\\

For more information:
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
  https://www.shellcheck.net/wiki/SC2006 -- Use $(...) notation instead of le...
