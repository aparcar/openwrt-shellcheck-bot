
In openwrt/scripts/arm-magic.sh line 27:
  set -- $board
         ^----^ SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
  set -- "$board"


In openwrt/scripts/arm-magic.sh line 28:
  hexid=$(printf %x\\n $2)
                       ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
  hexid=$(printf %x\\n "$2")


In openwrt/scripts/arm-magic.sh line 31:
    printf "\xe3\xa0\x10\x$hexid" > $BIN_DIR/$IMG_PREFIX-$1-zImage
           ^--------------------^ SC2059: Don't use variables in the printf format string. Use printf "..%s.." "$foo".
                                    ^------^ SC2086: Double quote to prevent globbing and word splitting.
                                             ^---------^ SC2086: Double quote to prevent globbing and word splitting.
                                                         ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
    printf "\xe3\xa0\x10\x$hexid" > "$BIN_DIR"/"$IMG_PREFIX"-"$1"-zImage


In openwrt/scripts/arm-magic.sh line 35:
      printf "\xe3\xa0\x10\x$(echo $hexid|cut -b "2 3")\xe3\x81\x1c\x$(echo $hexid|cut -b 1)" > $BIN_DIR/$IMG_PREFIX-$1-zImage
             ^-- SC2059: Don't use variables in the printf format string. Use printf "..%s.." "$foo".
                                   ^----^ SC2086: Double quote to prevent globbing and word splitting.
                                                                            ^----^ SC2086: Double quote to prevent globbing and word splitting.
                                                                                                ^------^ SC2086: Double quote to prevent globbing and word splitting.
                                                                                                         ^---------^ SC2086: Double quote to prevent globbing and word splitting.
                                                                                                                     ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
      printf "\xe3\xa0\x10\x$(echo "$hexid"|cut -b "2 3")\xe3\x81\x1c\x$(echo "$hexid"|cut -b 1)" > "$BIN_DIR"/"$IMG_PREFIX"-"$1"-zImage


In openwrt/scripts/arm-magic.sh line 37:
      printf "\xe3\xa0\x10\x$(echo $hexid|cut -b "3 4")\xe3\x81\x1c\x$(echo $hexid|cut -b "1 2")" > $BIN_DIR/$IMG_PREFIX-$1-zImage
             ^-- SC2059: Don't use variables in the printf format string. Use printf "..%s.." "$foo".
                                   ^----^ SC2086: Double quote to prevent globbing and word splitting.
                                                                            ^----^ SC2086: Double quote to prevent globbing and word splitting.
                                                                                                    ^------^ SC2086: Double quote to prevent globbing and word splitting.
                                                                                                             ^---------^ SC2086: Double quote to prevent globbing and word splitting.
                                                                                                                         ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
      printf "\xe3\xa0\x10\x$(echo "$hexid"|cut -b "3 4")\xe3\x81\x1c\x$(echo "$hexid"|cut -b "1 2")" > "$BIN_DIR"/"$IMG_PREFIX"-"$1"-zImage


In openwrt/scripts/arm-magic.sh line 41:
    cat $BIN_DIR/$IMG_PREFIX-zImage >> $BIN_DIR/$IMG_PREFIX-$1-zImage
        ^------^ SC2086: Double quote to prevent globbing and word splitting.
                 ^---------^ SC2086: Double quote to prevent globbing and word splitting.
                                       ^------^ SC2086: Double quote to prevent globbing and word splitting.
                                                ^---------^ SC2086: Double quote to prevent globbing and word splitting.
                                                            ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
    cat "$BIN_DIR"/"$IMG_PREFIX"-zImage >> "$BIN_DIR"/"$IMG_PREFIX"-"$1"-zImage

For more information:
  https://www.shellcheck.net/wiki/SC2059 -- Don't use variables in the printf...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
