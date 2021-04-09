
In openwrt/package/boot/uboot-envtools/files/uboot-envtools.sh line 15:
set ubootenv.@$cfgtype[-1].dev='$dev'
              ^-- SC1087: Use braces when expanding arrays, e.g. ${array[idx]} (or ${var}[.. to quiet).


In openwrt/package/boot/uboot-envtools/files/uboot-envtools.sh line 16:
set ubootenv.@$cfgtype[-1].offset='$offset'
              ^-- SC1087: Use braces when expanding arrays, e.g. ${array[idx]} (or ${var}[.. to quiet).


In openwrt/package/boot/uboot-envtools/files/uboot-envtools.sh line 17:
set ubootenv.@$cfgtype[-1].envsize='$envsize'
              ^-- SC1087: Use braces when expanding arrays, e.g. ${array[idx]} (or ${var}[.. to quiet).


In openwrt/package/boot/uboot-envtools/files/uboot-envtools.sh line 18:
set ubootenv.@$cfgtype[-1].secsize='$secsize'
              ^-- SC1087: Use braces when expanding arrays, e.g. ${array[idx]} (or ${var}[.. to quiet).


In openwrt/package/boot/uboot-envtools/files/uboot-envtools.sh line 19:
set ubootenv.@$cfgtype[-1].numsec='$numsec'
              ^-- SC1087: Use braces when expanding arrays, e.g. ${array[idx]} (or ${var}[.. to quiet).

For more information:
  https://www.shellcheck.net/wiki/SC1087 -- Use braces when expanding arrays,...
