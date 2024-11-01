
In openwrt/scripts/linksys-image.sh line 29:
	echo 'if [ "$1" = "'${1}'" ]; then'
             ^-------------^ SC2016: Expressions don't expand in single quotes, use double quotes for that.
                            ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
	echo 'if [ "$1" = "'"${1}"'" ]; then'


In openwrt/scripts/linksys-image.sh line 38:
	echo 'FW_VERSION=1.01.100\nBOOT_VERSION=01.00.01'
             ^-- SC2028: echo may not expand escape sequences. Use printf.


In openwrt/scripts/linksys-image.sh line 45:
	echo 'filesize=`stat --format=%s ./series_vmlinux.bix`'
             ^-- SC2016: Expressions don't expand in single quotes, use double quotes for that.


In openwrt/scripts/linksys-image.sh line 46:
	echo 'num_bank=`expr \( ${filesize} + ${flash_bank} - 1 \) / ${flash_bank}`'
             ^-- SC2016: Expressions don't expand in single quotes, use double quotes for that.


In openwrt/scripts/linksys-image.sh line 47:
	echo 'filesize_bank=`expr ${num_bank} \* ${flash_bank}`'
             ^-- SC2016: Expressions don't expand in single quotes, use double quotes for that.


In openwrt/scripts/linksys-image.sh line 48:
	echo 'case $1 in'
             ^----------^ SC2016: Expressions don't expand in single quotes, use double quotes for that.


In openwrt/scripts/linksys-image.sh line 50:
	echo 'mtd_debug erase $2 0 ${filesize_bank} >/dev/null 2>&1'
             ^-- SC2016: Expressions don't expand in single quotes, use double quotes for that.


In openwrt/scripts/linksys-image.sh line 51:
	echo 'mtd_debug write $2 0 ${filesize} ./series_vmlinux.bix >/dev/null 2>&1'
             ^-- SC2016: Expressions don't expand in single quotes, use double quotes for that.


In openwrt/scripts/linksys-image.sh line 52:
	echo 'mtd_debug read $2 0 100 image1.img >/dev/null 2>&1'
             ^-- SC2016: Expressions don't expand in single quotes, use double quotes for that.


In openwrt/scripts/linksys-image.sh line 64:
	echo 'case $1 in'
             ^----------^ SC2016: Expressions don't expand in single quotes, use double quotes for that.


In openwrt/scripts/linksys-image.sh line 66:
	echo 'flash_eraseall $2 >/dev/null 2>&1'
             ^-- SC2016: Expressions don't expand in single quotes, use double quotes for that.


In openwrt/scripts/linksys-image.sh line 67:
	echo 'nandwrite -p $2 ./series_vmlinux.bix >/dev/null 2>&1'
             ^-- SC2016: Expressions don't expand in single quotes, use double quotes for that.


In openwrt/scripts/linksys-image.sh line 68:
	echo 'mtd_debug read $2 0 100 image1.img >/dev/null 2>&1'
             ^-- SC2016: Expressions don't expand in single quotes, use double quotes for that.


In openwrt/scripts/linksys-image.sh line 79:
mkdir $imgdir
      ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
mkdir "$imgdir"


In openwrt/scripts/linksys-image.sh line 81:
gen_imagecheck $3 > $imgdir/iss_imagecheck.sh
               ^-- SC2086: Double quote to prevent globbing and word splitting.
                    ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
gen_imagecheck "$3" > "$imgdir"/iss_imagecheck.sh


In openwrt/scripts/linksys-image.sh line 82:
gen_nor_upgrade > $imgdir/iss_imageupgrade.sh
                  ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
gen_nor_upgrade > "$imgdir"/iss_imageupgrade.sh


In openwrt/scripts/linksys-image.sh line 83:
gen_nand_upgrade > $imgdir/iss_nand_imageupgrade.sh
                   ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
gen_nand_upgrade > "$imgdir"/iss_nand_imageupgrade.sh


In openwrt/scripts/linksys-image.sh line 84:
gen_fwinfo > $imgdir/firmware_information.txt
             ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
gen_fwinfo > "$imgdir"/firmware_information.txt


In openwrt/scripts/linksys-image.sh line 86:
chmod +x $imgdir/iss_imagecheck.sh
         ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
chmod +x "$imgdir"/iss_imagecheck.sh


In openwrt/scripts/linksys-image.sh line 87:
chmod +x $imgdir/iss_imageupgrade.sh
         ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
chmod +x "$imgdir"/iss_imageupgrade.sh


In openwrt/scripts/linksys-image.sh line 88:
chmod +x $imgdir/iss_nand_imageupgrade.sh
         ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
chmod +x "$imgdir"/iss_nand_imageupgrade.sh


In openwrt/scripts/linksys-image.sh line 90:
cp $1 $imgdir/series_vmlinux.bix
   ^-- SC2086: Double quote to prevent globbing and word splitting.
      ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
cp "$1" "$imgdir"/series_vmlinux.bix


In openwrt/scripts/linksys-image.sh line 92:
tar cf $2 -C $tmpdir image/
       ^-- SC2086: Double quote to prevent globbing and word splitting.
             ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
tar cf "$2" -C "$tmpdir" image/


In openwrt/scripts/linksys-image.sh line 94:
rm -rf $tmpdir
       ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
rm -rf "$tmpdir"

For more information:
  https://www.shellcheck.net/wiki/SC2016 -- Expressions don't expand in singl...
  https://www.shellcheck.net/wiki/SC2028 -- echo may not expand escape sequen...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
