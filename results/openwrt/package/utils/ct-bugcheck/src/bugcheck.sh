
In openwrt/package/utils/ct-bugcheck/src/bugcheck.sh line 15:
    date >> $CRASHDIR/info.txt
    ^------------------------^ SC2129: Consider using { cmd1; cmd2; } >> file instead of individual redirects.


In openwrt/package/utils/ct-bugcheck/src/bugcheck.sh line 30:
	echo >> $CRASHDIR/info.txt
        ^------------------------^ SC2129: Consider using { cmd1; cmd2; } >> file instead of individual redirects.


In openwrt/package/utils/ct-bugcheck/src/bugcheck.sh line 34:
    echo >> $CRASHDIR/info.txt
    ^------------------------^ SC2129: Consider using { cmd1; cmd2; } >> file instead of individual redirects.


In openwrt/package/utils/ct-bugcheck/src/bugcheck.sh line 68:
  if cat $i > $TMPLOC/ath10k_crash.bin 2>&1
         ^-- SC2086: Double quote to prevent globbing and word splitting.

Did you mean: 
  if cat "$i" > $TMPLOC/ath10k_crash.bin 2>&1


In openwrt/package/utils/ct-bugcheck/src/bugcheck.sh line 84:
      if [ -f $ADIR/ct_special -o $CTFW == "1" ]
              ^---^ SC2086: Double quote to prevent globbing and word splitting.
                               ^-- SC2166: Prefer [ p ] || [ q ] as [ p -o q ] is not well defined.

Did you mean: 
      if [ -f "$ADIR"/ct_special -o $CTFW == "1" ]


In openwrt/package/utils/ct-bugcheck/src/bugcheck.sh line 87:
	  echo "greearb@candelatech.com" >> $CRASHDIR/report_to.txt
          ^-- SC2129: Consider using { cmd1; cmd2; } >> file instead of individual redirects.

For more information:
  https://www.shellcheck.net/wiki/SC2166 -- Prefer [ p ] || [ q ] as [ p -o q...
  https://www.shellcheck.net/wiki/SC2086 -- Double quote to prevent globbing ...
  https://www.shellcheck.net/wiki/SC2129 -- Consider using { cmd1; cmd2; } >>...
