
In openwrt/package/base-files/files/lib/functions/ipv4.sh line 26:
    if [ -z "$__n" -o -n "${__n//[0-9]/}" ]; then
                   ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.


In openwrt/package/base-files/files/lib/functions/ipv4.sh line 207:
    if [ $__cont -eq 0 ]; then
         ^-----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
    if [ "$__cont" -eq 0 ]; then


In openwrt/package/base-files/files/lib/functions/ipv4.sh line 222:
    if [ $d_10_0_0_0 -le $__x ] && [ $__x -le $d_10_255_255_255 ]; then
                         ^--^ SC2086: Double quote to prevent globbing and word splitting.
                                     ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
    if [ $d_10_0_0_0 -le "$__x" ] && [ "$__x" -le $d_10_255_255_255 ]; then


In openwrt/package/base-files/files/lib/functions/ipv4.sh line 224:
    elif [ $d_172_16_0_0 -le $__x ] && [ $__x -le $d_172_31_255_255 ]; then
                             ^--^ SC2086: Double quote to prevent globbing and word splitting.
                                         ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
    elif [ $d_172_16_0_0 -le "$__x" ] && [ "$__x" -le $d_172_31_255_255 ]; then


In openwrt/package/base-files/files/lib/functions/ipv4.sh line 226:
    elif [ $d_192_168_0_0 -le $__x ] && [ $__x -le $d_192_168_255_255 ]; then
                              ^--^ SC2086: Double quote to prevent globbing and word splitting.
                                          ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
    elif [ $d_192_168_0_0 -le "$__x" ] && [ "$__x" -le $d_192_168_255_255 ]; then


In openwrt/package/base-files/files/lib/functions/ipv4.sh line 238:
    if [ $d_169_254_0_0 -le $__x ] && [ $__x -le $d_169_254_255_255 ]; then
                            ^--^ SC2086: Double quote to prevent globbing and word splitting.
                                        ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
    if [ $d_169_254_0_0 -le "$__x" ] && [ "$__x" -le $d_169_254_255_255 ]; then


In openwrt/package/base-files/files/lib/functions/ipv4.sh line 250:
    if [ $d_127_0_0_0 -le $__x ] && [ $__x -le $d_127_255_255_255 ]; then
                          ^--^ SC2086: Double quote to prevent globbing and word splitting.
                                      ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
    if [ $d_127_0_0_0 -le "$__x" ] && [ "$__x" -le $d_127_255_255_255 ]; then


In openwrt/package/base-files/files/lib/functions/ipv4.sh line 262:
    if [ $d_224_0_0_0 -le $__x ] && [ $__x -le $d_239_255_255_255 ]; then
                          ^--^ SC2086: Double quote to prevent globbing and word splitting.
                                      ^--^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
    if [ $d_224_0_0_0 -le "$__x" ] && [ "$__x" -le $d_239_255_255_255 ]; then

For more information:
  https://www.shellcheck.net/wiki/SC2166 -- Prefer [ p ] || [ q ] as [ p -o q...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
